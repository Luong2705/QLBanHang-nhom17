GitHub Enterprise Migration Tool
==============

A tool to migrate issues and pull requests from one GitHub repo to another. I used the scripts in this repository to 
transfer all of our pull requests, issues, review comments, issues comment and commit comments frm repositories on GitHub
to in-house GitHub Enterprise repositories.

There are two scripts that I used:

fetchIssues.js (pulls issues/pull requests and all comments from source)
pushIssues.js (pushes everything to the destination repo)

Here's how I did it.

Move Repo
-----

1. Do a ```git clone sourcerepo --mirror```
2. run sed -i.bak s/pull/pr/g <your repo>.git/packed-refs
3. Do a ```git push destrepo --mirror```

Note step #2 is important in that you can not push up any refs in refs/pull. These are considered "hidden" refs by GitHub
and won't get pushed. But by renaming them to pr you will have useful "hidden" branches on your destination repo. These
will come in handy when creating pull requests which require a "base" ref and a "head" ref. The "head" refs are already
in your repo, created by GitHub for every pull request you ever did.

Move Everything Else
--------

0. Open fetchIssues and modify the source info at the top of the script.
1. Go to the bottom of fetchIssues.js where you see getIssues, getComments and anchorCommits. Comment out the line about anchor commits. Now run it ```node fetchIssues.js repoName``` (There will now be a new subdirectory in your working directory named after your repo. It'll contain all issues (and pull requests) and all comments).
2. (An aside. Your mirrored repository may be missing many (many) "orphaned" commits that are reference by pull requests, review comments and commit comments. The next step will identify all of the commits that are referenced but that don't exist in your destination repository. We will then try to "adopt" them. In other words we can still try to create refs to them in the original source repository so that we can clone the source a second time, this time containing the "orphaned" commits.)
3. Open pushIssues.js and modify the dest info at the top of the script
4. Go to the bottom of pushIssues.js and comment out all of the tasks except "checkPulls" and "checkCommits". Now run it ```node pushIssues.js repoName```. All this is going to do is spit out commits that are referenced but that don't exist in the destination repository. If you don't see any commits then you are in good shape. Skip the next steps and meet me at #???. Otherwise go to the next step.
5. In the previous step the orphaned commits were written to repoName/missingCommits.json. Some of these commits may actually still be in the source repo (some may not and there is not much we can do about those). Open fetchIssues.js and go to bottom. Now comment out getIssues and getComments and uncomment anchorCommits. Now run it ```node fetchIssues.js repoName```. This now attempts to create a ref (a branch) for each missing commit. You may see some or many failed attempts. Those commits are truly gone. When this step finishes, you will have "anchored" all of the commits that still exist and are referenced.
6. Now go back to the first part of these steps and reclone and repush. The new clone will contain all of the newly anchored commits and they will then make it into your destination repo
7. Now we are ready to start the creation process. Open pushIssues and comment out all tasks but createBranches and run it. This step creates a branch called pr#base for each pull request. There already exists hidden refs named pr/#/head for each pull reqeust (where in both cases # is the pull number).
8. Now rerun with just pushIssues uncommented. This will push all of your issues up and in the case of an issue that is a pull request it will create a pull request. To create a pull request 4 pieces of info are needed: title, body, head branch, base branch. We already have all the branches created so each issue should be created successfully. Note: I did run into issues on this step (See below for what can go wrong creating a pull request).
9. 





What can go wrong creating pull reqeust
---------