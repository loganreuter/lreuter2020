@echo off

npm run build

cd "./dist"

echo www.loganreuter.com >> CNAME

git init
git branch -M main
git add .
git commit -m "new deploy"
git remote add origin https://github.com/loganreuter/lreuter2020.github.io.git
git push --set-upstream origin main
git push -f