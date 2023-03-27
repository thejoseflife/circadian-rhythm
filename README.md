# Circadian 



## Getting started

To make it easy for you to get started with GitLab, here's a list of recommended next steps.

## Running Instructions

There will be a total of 5 files that the user can compile and run, 3 of which are driver files: rhs.m, rhs_ft.m, solver.m, p_continuation.m, and bifurcation.m.
Rhs.m and rhs_ft.m are the two files which include the parameters necessary to produce solutions that stablize to equilibrium and solutions that stabilize to a limit cycle (a solution with oscillatory behavior).
Rhs.m is the file of parameter inputs for the system that doesn't have a light function forcing it, our baseline system. Rhs_ft.m is the file where parameters and the system of differential equations make use of
the sinosudal light function. Note that changes to these files must only be block commenting the parameters that associate with a certain behavoir. For example, if the user wishes to view the stable equlibrium solution
of the baseline model, then in rhs.m, they should block comment the parameters under the comment "stable limit cycle" and uncomment the parameters under the comment "stable equilibrium solution." Do not make any changes
to the equations at the bottom of both files. Make sure to compile before running the driver file associated with it, solver.m.

As for the driver files, they are: solver.m, p_continuation.m, and bifurcation.m. Solver.m produces nominal model solutions, which include solutions to the baseline system of ODE's with original parameters,
solution of ODE's with the sinosudal light function, solutions with time course of variables


## Add your files

- [ ] [Create](https://docs.gitlab.com/ee/user/project/repository/web_editor.html#create-a-file) or [upload](https://docs.gitlab.com/ee/user/project/repository/web_editor.html#upload-a-file) files
- [ ] [Add files using the command line](https://docs.gitlab.com/ee/gitlab-basics/add-file.html#add-a-file-using-the-command-line) or push an existing Git repository with the following command:

```
cd existing_repo
git remote add origin https://gitlab.eecs.umich.edu/logm/wn23/circadian-rhythms/circadian.git
git branch -M main
git push -uf origin main
```

## Integrate with your tools

- [ ] [Set up project integrations](https://gitlab.eecs.umich.edu/logm/wn23/circadian-rhythms/circadian/-/settings/integrations)

## Collaborate with your team

- [ ] [Invite team members and collaborators](https://docs.gitlab.com/ee/user/project/members/)
- [ ] [Create a new merge request](https://docs.gitlab.com/ee/user/project/merge_requests/creating_merge_requests.html)
- [ ] [Automatically close issues from merge requests](https://docs.gitlab.com/ee/user/project/issues/managing_issues.html#closing-issues-automatically)
- [ ] [Enable merge request approvals](https://docs.gitlab.com/ee/user/project/merge_requests/approvals/)
- [ ] [Automatically merge when pipeline succeeds](https://docs.gitlab.com/ee/user/project/merge_requests/merge_when_pipeline_succeeds.html)

## Test and Deploy

Use the built-in continuous integration in GitLab.

- [ ] [Get started with GitLab CI/CD](https://docs.gitlab.com/ee/ci/quick_start/index.html)
- [ ] [Analyze your code for known vulnerabilities with Static Application Security Testing(SAST)](https://docs.gitlab.com/ee/user/application_security/sast/)
- [ ] [Deploy to Kubernetes, Amazon EC2, or Amazon ECS using Auto Deploy](https://docs.gitlab.com/ee/topics/autodevops/requirements.html)
- [ ] [Use pull-based deployments for improved Kubernetes management](https://docs.gitlab.com/ee/user/clusters/agent/)
- [ ] [Set up protected environments](https://docs.gitlab.com/ee/ci/environments/protected_environments.html)

***

# Editing this README

When you're ready to make this README your own, just edit this file and use the handy template below (or feel free to structure it however you want - this is just a starting point!). Thank you to [makeareadme.com](https://www.makeareadme.com/) for this template.

## Visualizing the Dynamics of Periodic and Aperiodic Oscillatory Dynamics in a Circadian Model

## Description
Let people know what your project can do specifically. Provide context and add a link to any reference visitors might be unfamiliar with. A list of Features or a Background subsection can also be added here. If there are alternatives to your project, this is a good place to list differentiating factors.

The goal of this project is to look at existing models of circadian rhythms and identify parameters and initial conditions of the model that give us a stable system. 

## Badges
On some READMEs, you may see small images that convey metadata, such as whether or not all the tests are passing for the project. You can use Shields to add some to your README. Many services also have instructions for adding a badge.

## Visuals
Depending on what you are making, it can be a good idea to include screenshots or even a video (you'll frequently see GIFs rather than actual videos). Tools like ttygif can help, but check out Asciinema for a more sophisticated method.

## Installation
Within a particular ecosystem, there may be a common way of installing things, such as using Yarn, NuGet, or Homebrew. However, consider the possibility that whoever is reading your README is a novice and would like more guidance. Listing specific steps helps remove ambiguity and gets people to using your project as quickly as possible. If it only runs in a specific context like a particular programming language version or operating system or has dependencies that have to be installed manually, also add a Requirements subsection.


## Usage
Use examples liberally, and show the expected output if you can. It's helpful to have inline the smallest example of usage that you can demonstrate, while providing links to more sophisticated examples if they are too long to reasonably include in the README.

## Support
Tell people where they can go to for help. It can be any combination of an issue tracker, a chat room, an email address, etc.

## Roadmap
In the future, we would like to observe what happens to circadian rhythms when light behaves differently from what most living organisms experience. So far, we've looked at a sinosudal light function that mimics the gradual change in exposure of light during
the daytime versus the nighttime. Light with different behavior would be turning off and on a light switch, where there is either total exposure to light or entirely no exposure to light. Living organisms that would experience this type of change in light are 
living organisms in a lab setting, where light can be controlled in such a manner, and there is evidence with existing models that the rhythms behave quite differently compared to gradually being exposed to light. We would like to study these effects with our 
existing model as well and see if our observations align with prexisting evidence.

## Contributing
State if you are open to contributions and what your requirements are for accepting them.

For people who want to make changes to your project, it's helpful to have some documentation on how to get started. Perhaps there is a script that they should run or some environment variables that they need to set. Make these steps explicit. These instructions could also be useful to your future self.

You can also document commands to lint the code or run tests. These steps help to ensure high code quality and reduce the likelihood that the changes inadvertently break something. Having instructions for running tests is especially helpful if it requires external setup, such as starting a Selenium server for testing in a browser.

## Authors and acknowledgment
Show your appreciation to those who have contributed to the project.
Contributors: Ruby Kim, Jackie Song, Josef Sajonz, Kalinda Yu, Anna Kaplan, Phoebe Sarker

## License
For open source projects, say how it is licensed.

## Project status
If you have run out of energy or time for your project, put a note at the top of the README saying that development has slowed down or stopped completely. Someone may choose to fork your project or volunteer to step in as a maintainer or owner, allowing your project to keep going. You can also make an explicit request for maintainers.
