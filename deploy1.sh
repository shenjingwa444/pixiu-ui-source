rm -rf dist &&
yarn build &&
cd dist &&
git init &&
git add . &&
git commit -m "update" &&
git branch -M master &&
git remote add gitee git@gitee.com:shenjingwa444/pixiu-ui.git
git push -f -u gitee master &&
cd -
echo https://shenjingwa444.gitee.io/pixiu-ui/#/