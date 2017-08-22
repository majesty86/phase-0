#Release 1 Questions

*What are some of the key design philosophies of the Linux operating system?*
-Very lightweight and small
-Linux commands are just like terminal commands, so running Linux is basically like typing things on the command line

*In your own words, what is a VPS?  What, according to your research, are advantages of using a VPS?*
A VPS is a virtual computer (or virtual machine or VM) that can be created in minutes.  It has an operating system, files, etc. just like a real computer.

Advantages of using a VPS:
-Costly mistakes don't destroy your personal computer - you can just create another VM
-Save $$$
-Room to grow
-Full control (via root access)
-Speedy compared to shared hosting

*Why is it considered a bad idea to run programs as the root user on a Linux system?*
Some points:
-If hacked, a hacker gets access to everything in the system; if a regular user, the access is only in what the user has modified.
-Directories and files can easily be wiped with one wrong move or typo
-'root' is very common and vulnerable
-If there is more than one user, there's no way to tell who did what

Personally, I know this isn't git, but I can see similarities.  All in all, not using root is just another failsafe to protect files that could have had hours spent on them.


