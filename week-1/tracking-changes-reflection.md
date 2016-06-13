How does tracking and adding changes make developers' lives easier?
-It allows 'snapshotting' of file states so developers can go selectively go back to previous state of work.
What is a commit?
-A commit is when you take a snapshot state of the files you've asked Git to track.
What are the best practices for commit messages?
-Best practice for commit mesages are to run commit with the -v flag.
This allows for a full commit message in detail. The commit mesage should be similar to sending a email. First line should have a short Capitalized summary, body should have more detailed explanation. Commit messages should be written in the imperative.
What does the HEAD^ argument mean?
-HEAD^ is the same as HEAD^1, meaning the very recent tip of the current branch
What are the 3 stages of a git change and how do you move a file from one stage to the other?
-#(Answered the best I could) The three stages of git change are the working directory, the index, and history. To move between stages, you use: git reset HEAD^.
Write a handy cheatsheet of the commands you need to commit your changes?
-git add <file>, git commit -m "commit message", and git merge <branch>
What is a pull request and how do you create and merge one?
-A pull request is made through Github for code peer review. After it is approved, it can be merged to remote repository.
Why are pull requests preferred when working with teams?
-Pull requests are preferred b/c code that is peer reviewed before merging is good practice.
