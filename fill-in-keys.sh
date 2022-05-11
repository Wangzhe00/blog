#!/usr/bin/bash

id=("BAIDU_PUSH_TOKEN" "GITTALK_COMMENT_CLIENTID" "GITTALK_COMMENT_CLIENT_SECRET")

dirs=("baiduPush.sh" "./docs/.vuepress/config.ts" "./docs/.vuepress/config.ts")

len=${#id[*]}

for (( i=0; i<$len; i=i+1 )); do
    t=${id[i]}
    if [ -n "${!t}" ]; then
        sed -i "s/${id[i]}/${!t}/g" ${dirs[i]}
        echo "success fill in $t in ${dirs[i]}"
    else
        echo "can't find $t env or ${dirs[i]} dir"
        exit 1
    fi
done
