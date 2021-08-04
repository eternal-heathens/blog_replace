rem !/usr/bin/env sh

rem 确保脚本抛出遇到的错误
rem set -e

rem 生成静态文件
call npm run build

rem 进入生成的文件夹
cd docs/.vuepress/dist

rem 如果是发布到自定义域名
rem echo 'www.zhangyunchen.cc' > CNAME

git init
git add -A
git commit -m 'deploy'

rem 如果你想要部署到 https://<USERNAME>.github.io
git push -f git@github.com:eternal-heathens/eternal-heathens.github.io.git master

rem 如果发布到 https://<USERNAME>.github.io/<REPO>  REPO=github上的项目
rem git push -f git@github.com:<USERNAME>/vuepress.git master:gh-pages


