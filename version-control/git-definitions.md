# Git Definitions

**Instructions: ** Define each of the following Git concepts.

* What is version control?  Why is it useful?

Version control is a system that records changes to a file or set of files over time so that you can recall specific versions later. For example, think of a Version Control System as making a time line of your work, and one can go back to previous versions of your work. Versions control are useful to compare different types of works, or used for immediate debugging. For example, if there was a recent change and a new bug appeared, an immediate fix would to revert back to the previous version then work on debugging the new problem that arised. 

* What is a branch and why would you use one?

A branch in Git is simply a lightweight movable pointer to one of these commits. The default branch name in Git is master. As you initially make commits, you're given a master branch that points to the last commit you made. Every time you commit, it moves forward automatically. Branches are used to make different commits or in other words to save a type of work without changing the master branch. Without changing the master branch, one can keep working on a branch until they are ready to merge to the master branch. Also one branch can diverge from the overall master branch and do something completely different from the master's objective. Branches help for diversity, but also unison as well.

* What is a commit? What makes a good commit message?

Basically git commit "records changes to the repository" while git push "updates remote refs along with associated objects". So the first one is used in connection with your local repository, while the latter one is used to interact with a remote repository. Think of a commit like a saved point in a video game. Commits are saved points, where you can revert back. It makes your code or text into a timeline, so that you may go back to previous works, go compare to previous works, or go referr back to previous works. A good commit message is something that states what was changed, modified, or added for a directory or a file(s).

* What is a merge conflict?

A merge conflict usually occurs when your current branch and the branch you want to merge into the current branch have diverged. That is, you have commits in your current branch which are not in the other branch, and vice versa. A merge conflict usually occurs when two branches were both modified then one would try to merge the two branches. This is what happens when branches diverge. Merge conflicts are usually resolved with thinking, otherwise git would have done the merge already. Some ways to merge is using .gitignore, but in more complex projects, it is more than that!

Hello Tyler: Bontgoy!
Dude
