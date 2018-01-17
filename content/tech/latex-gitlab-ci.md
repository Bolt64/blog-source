title: Setting up GitLab to automatically generate PDFs from committed TeX files
slug: latex-gitlab-ci
tags: gitlab, LaTeX
category: LaTeX
date: 17-1-2018

I had been meaning to get started with GitLab's continuous integration
to generate PDFs of my assignments and notes, rather then generating the
PDFs offline and committing them to the repository as well, but I always
kept delaying the migration because of the lack of sufficient documentation
on the matter. This morning I finally got around to doing it, and I thought
I'll document it for anyone who wishes to do the same in the future.

## Outline of GitLab's continuous integration service
On receiving a commit to a repository hosted on GitLab, the GitLab
software checks whether the repository has a file named `.gitlab-ci.yml`
in the root directory. This file contains the commands to be executed
by whatever computer is running the continuous integration service.
In GitLab's parlance, these are called [Runners](https://docs.gitlab.com/runner/).
These runners can be any computer, from a server running in your room, to a short lived
VM on the cloud. For the free tier, GitLab provides access to runners on 
[AWS](https://aws.amazon.com/), but with the restriction of having only 2000
minutes of compute time per month.

For these free runners, there's no configuration to be done from our side; all we need
to do is push a `.gitlab-ci.yml` to our repository, and GitLab takes care of
running it on a runner. There is one thing to watch out for though. The free runners
are usually short lived, and one can't install software on them, which means
we can't do a `sudo apt install texlive-full` as a command that runs on the runner.
Luckily, the runners do have 
[docker](https://www.docker.com/)[[2](http://www.zdnet.com/article/what-is-docker-and-why-is-it-so-darn-popular/)]
installed on them, which means we can use some image from which has all the
necessary software installed on it already.
