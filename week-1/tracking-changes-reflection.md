How does tracking and adding changes make developers' lives easier?

Adding changes makes developers' lives easier because it allows for bug fixes, additional functionality with new features, along with the ability to maerge their code with others. Tracking changes allows later developers to study the evolution of the code thereby allowing them to understand its internal infrastructure more deeply. It also helps with bug fixes and determinging authorship.  


What is a commit?

A commit is a bactch upload of changes to the source code in a repository. It can be removed to allow for early versions to be accessable. 


What are the best practices for commit messages?

The best practices to write a commit messages is to write a one line header that summarizes the main concepts of the revision in the commit, followed by the main paragraph which goes into metadata and explanations of why the revision was made. You must makes sure to have one empty line between the header and the body. 


What does the HEAD^ argument mean?

This argument refers to the last commit made.


What are the 3 stages of a git change and how do you move a file from one stage to the other?

The three stages are to create a feature branch, stage your revisions, followed by commiting your changes. To move a file from one stage to the other you use the commit command. 


Write a handy cheatsheet of the commands you need to commit your changes?

git checkout -b 
touch
git status
git add .
git pull
git merge


What is a pull request and how do you create and merge one?

git pull does a git fetch folowed by git merge. 
You createa pulll by typing git pull.
To merge you type git merge followed by "the branch you want to merge". 


Why are pull requests preferred when working with teams?

Pulls are prefered becuase it allows you to experiemtne with the code without fear of 
touching the master code which the team is is building. It allows you to work on code in the hopes of merging it with the master file pending the team's approval. 



