# Git Definitions

**Instructions: ** Define each of the following Git concepts.

* What is version control?  Why is it useful?

Version control is a computer system which manages files and the changes made to those files.  It allows other people to safely make changes to files, and gives the creator of the repository the ability to implement any changes they like.  It also keeps track of any changes made, so if a change breaks the code, you can easily revert back to the last working state.

* What is a branch and why would you use one?

A branch is a safe working copy of a repository.  Creating a branch allows you to make changes without affecting the current applied version of the code.  If you feel like your changes are good and ready to be implemented in the main version, you can merge the branch back into the main one.

* What is a commit? What makes a good commit message?

A commit is the act of actually including your code in the local repository.  A good commit message is concise, and describes the changes or additions you made so the maintainer can easily understand what is to be implemented.


* What is a merge conflict?

A merge conflict is when a file in a branch has been edited in different ways, and git doesn't know which change to accept.  Git will 'highlight' the differences in the conflicted file, and the user will need to decide which version of the conflict to keep. 
