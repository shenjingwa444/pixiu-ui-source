rm -rf dist &&
yarn build &&
cd dist &&
git init &&
git add . &&
git commit -m "update" &&
git branch -M master &&
git remote add origin git@github.com:shenjingwa444/pixiu-ui-dist.git
git push -f -u origin master &&
cd -
echo https://shenjingwa444.github.io/pixiu-ui-dist/index.html
