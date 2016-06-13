### 1.1 Think About Time Reflection
The most useful time management tool I learned about was the time box. I know that I have a tendency of doing things without the time in mind. My thought is that doing things as “fast as I can” is the best way of getting things done. Unfortunately when the task at hand is a large or difficult, it can feel overwhelming and desperate. If I divide my tasks into smaller time box segments that I can finish respectfully, I can accomplish more of the overall task and not get “stuck” anywhere. Time boxing will allow me to respect my mind wandering side when I take time box breaks. I expect most of my creativity and ideas come from there and an increase in productivity.

### 1.2 The Command Line Reflection
Shell is the command line interface through which we communicate with the machine. Bash is is the command language interpreter that most Unix machines understand.
The most difficult thing is getting used to working within the command line but it becomes very apparent how robust it is.
I believe the most important commands to know are the commands for orientation and navigation (pwd, ls, cd). I also believe 'man [command]' or 'help [command]' is a very important command to know because it contains documentation about the command.

pwd -prints the current working directory

ls - lists contents of directory

mv- move files from one location to another, can also be used to rename files.

cd - change directory (~/) can be used to goto root.

../ - means the parent directory of the current directory.

touch - used to create file(s) or to set access and modification stamps. Used with 'stat'

mkdir - used to create folders. the -p option allows creation of nested folders

less - less is used to move backwards and forwards when reading a file

rmdir - used to remove a directory(s)

rm - used to remove file(s)

help - used to documentation

### 1.4 Forking and Cloning Reflection
Forking is when a copy of a project/file is duplicated to your personal remote or local repository so it can be edited to take a life of it's own as a new project, or to resume work from a project's current state to be merged later. Forking allows users to collaborate and start working from a 'base' state so changes can be easily tracked/merged wheras creating a new repository would be like starting from scratch making it much more difficult to see changes. The most difficult thing for me to grasp was the concept of 'tracking' using git add and 'committing' using git commit -m 'change'. Further learning about branching helped me better understand how Git is tracking changes and handling merges and pull requests.
Instructions to create a new remote repository/fork would be: Create new Github repo by going to Github.com and clicking (+) at the top and select 'create new repository'. Specify fork name and MIT license. After creating fork, copy url of the newly forked repository (provided by github on project page). Inside terminal, navigate to the root folder in which you would like to store the local repository. Run command: git clone [Git URL]. It will clone the git repository and track all changes. If the user only wants to use version control with git and create a new repository, then type into the terminal of the working directory: git init.
When setting up git and GitHub, I had most difficulty understanding the separate functions of git and how it is used with Github as a collaborative tool. After understanding how git works, the concepts how how they work together became clear.
