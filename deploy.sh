@echo off

npm run build

cd "./dist"

echo www.loganreuter.com >> CNAME

git add .
git commit -m "new deploy"
git push -f