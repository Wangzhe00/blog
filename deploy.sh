#!/usr/bin/env sh

# 确保脚本抛出遇到的错误
set -e

id=("BAIDU_PUSH_TOKEN" "GITTALK_COMMENT_CLIENTID" "GITTALK_COMMENT_CLIENT_SECRET")

dirs=("baiduPush.sh" "./docs/.vuepress/config.ts" "./docs/.vuepress/config.ts")

len=${#id[*]}

if [ -z "$BAIDU_PUSH_TOKEN" ]; then
  echo "can't find $t env"
  exit 1
else
  sed -i "s/BAIDU_PUSH_TOKEN/$BAIDU_PUSH_TOKEN/g" baiduPush.sh
  echo "success fill in BAIDU_PUSH_TOKEN in baiduPush.sh"
fi

for (( i=0; i<$len; i=i+1 )); do
  t=${id[i]}
  if [ -z "${!t}" ]; then
    echo "can't find $t env or ${dirs[i]} dir"
    exit 1
  else
    sed -i "s/${id[i]}/${!t}/g" ${dirs[i]}
    echo "success fill in $t in ${dirs[i]}"
  fi
done

./fill-in-keys.sh

# 生成静态文件
npm run build

# 进入生成的文件夹
cd docs/.vuepress/dist

# deploy to github pages
echo 'b.wangzhee.cn' > CNAME

if [ -z "$GITHUB_TOKEN" ]; then
  msg='deploy'
  githubUrl=git@github.com:Wangzhe00/blog.git
else
  msg='来自github actions的自动部署'
  githubUrl=https://Wangzhe00:${GITHUB_TOKEN}@github.com/Wangzhe00/blog.git
  git config --global user.name "wangzhe"
  git config --global user.email "wangzhe8889@163.com"
fi
git init
git add -A
git commit -m "${msg}"
git push -f $githubUrl master:gh-pages # 推送到github gh-pages分支

# deploy to coding pages
# echo 'www.xugaoyi.com\nxugaoyi.com' > CNAME  # 自定义域名
# echo 'google.com, pub-7828333725993554, DIRECT, f08c47fec0942fa0' > ads.txt # 谷歌广告相关文件

# if [ -z "$CODING_TOKEN" ]; then  # -z 字符串 长度为0则为true；$CODING_TOKEN来自于github仓库`Settings/Secrets`设置的私密环境变量
#   codingUrl=git@e.coding.net:xgy/xgy.git
# else
#   codingUrl=https://HmuzsGrGQX:${CODING_TOKEN}@e.coding.net/xgy/xgy.git
# fi
# git add -A
# git commit -m "${msg}"
# git push -f $codingUrl master # 推送到coding

cd -
rm -rf docs/.vuepress/dist
