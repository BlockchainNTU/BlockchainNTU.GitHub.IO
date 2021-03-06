clear

echo -e "\n\t Add, Commit, Remote Add and Push to Git initiated ...\n"

read -e -p "Enter the commit comment: " comment

cd src/
hugo
cd ..

cp -r src/docs/* .
git add .
git commit -m "$comment"
git push origin master

echo -e "\n\t '$comment' Add, Commit, Remote Add and Push to Git completed ...\n"