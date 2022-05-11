#!/usr/bin/env sh

id=("BAIDU_PUSH_TOKEN" "GITTALK_COMMENT_CLIENTID" "GITTALK_COMMENT_CLIENT_SECRET")

dirs=("baiduPush.sh" "docs\.vuepress\config.ts" "docs\.vuepress\config.ts")

len=${#id[*]}

for (( i=0; i<$len; i=i+1 )); do
    t=${id[i]}
    sed -i "s/${id[i]}/${!t}/g" ${dirs[i]}
done
