# Introduction

This git repository will host an introduction to Python. In addition, the goal is to use `git` to keep track of your changes. It will explain the basics of how to work with Python and how to start using it.

This README.md will contains the instructions for how to setup your system. This includes essentially three steps:

1) installing Anaconda Python locally;
2) installing git and fork & clone this repository;
3) run python.

# Install Anaconda Python

For this introduction we will be using Anaconda Python. This is because it is far easier to install many python packages in Anaconda than in regular Python, especially for Windows. Please go to https://www.anaconda.com/products and download Anaconda and follow the installation instructions.

# Use this repository with `git`.

Below there are some more detailed instructions for how to setup `git`. If you are already familiar with `git`, you can just do:

1. Fork this repository
2. Clone your own fork locally
3. Create a new branch to work in

## Install and configure `git`
You can download and install `git` from https://git-scm.com/download. Please follow the installation instructions provided there.

In order to get started with `git` please make sure that you have configured `git` correctly. You can open the terminal (the "Bash terminal" on Windows) to use and configure `git`.

```bash
git configure --global user.name "User Name"
git configure --global user.email name@email.com
```

Please replace `User Name` and `name@email.com` with your own name and email.

If you are on Windows, you might want to use `notepad` as the default text editor for `git`:

```bash
git configure --global core.editor notepad
```

For other systems, there are a number of popular text editors and their configuration listed [here](https://git-scm.com/book/en/v2/Appendix-C%3A-Git-Commands-Setup-and-Config#ch_core_editor).

## Forking this repository

Please make your own copy of this repository by "forking" it. You can make changes to everything in your own repository, and that push those changes to GitHub. That way, you can easily keep track of your own work.

You can fork this repository by clicking the "Fork" button at the top-right of the [landing page of this repository in GitHub](https://github.com/vtraag/intro-python). After you clicked on "Fork", GitHub will create a new repository for you under your own account.

If you have forked this repository now, you should see at the top of this page that it says `<acccount>/intro-python` and below it will say `forked from vtraag/intro-python`. If you see this, you have successfully forked the original repository.

## Clone your own fork locally

Now that you have your own fork of the repository, you can clone this repository. Cloning a repository simply means that you make it available on your local computer.

If you want to do this through the `git` terminal, you can simply do

```bash
git clone https://github.com/<account>/intro-python
```

where you should replace `<account>` by your own account. You can also press the green "Code" buttton to get the correct URL. Make sure that you clone your own fork, and not the original repository, because you will not be able to push changes to the original repository.

Alternatively, you can clone the repository using a GUI, for example through [GitHub desktop](https://desktop.github.com/). If you prefer this route, you can simply click on the gren "Code" button, then click "Open with GitHub Desktop" and follow the instructions. For more details, please see [these instructions](https://docs.github.com/en/desktop/contributing-and-collaborating-using-github-desktop/adding-and-cloning-repositories/cloning-a-repository-from-github-to-github-desktop).

## Create your own branch

Instead of working directly in the `main` branch, you should work in your own branch. You can call that branch whatever you like, perhaps `work` would be a suitable name.

You can easily create a new branch in the `git` terminal and switch to that branch:

```bash
git branch work
git switch work
```

Alternatively, you can create a new branch in your favorite GUI, for example through GitHub desktop. Please follow the instructions provided [here](https://docs.github.com/en/desktop/contributing-and-collaborating-using-github-desktop/making-changes-in-a-branch/managing-branches) for more details.

You are now all setup and good to go! Good luck with the introduction to Python.

# Run Python

There are essentially two ways of running Python. You can simply run an existing Python script. We will not talk much about this way of using Python. The second way of running Python is interactively. You can interactively run Python in several different ways. We will explore two relatively common possibilities: an interactive editor ([Spyder](https://www.spyder-ide.org/)) and a so-called notebook ([Jupyter notebook](https://jupyter.org/)).

## Run Spyder

There are a few ways in which you can launch Spyder:

1. You can launch Spyder from the Start Menu, but this only works on Windows.
1. You can launch Spyder from the Anaconda Navigator: see [here](https://docs.anaconda.com/anaconda/user-guide/getting-started/) for instructions.
2. You can launch Spyder from the terminal / Anaconda prompt. If you are on Windows, please open the Anaconda prompt from the Start Menu. If you are on macOS or linux, please open a terminal and activate conda by `conda activate`. For all three platforms you can then run Spyder by `spyder`.

We will briefly experiment with Spyder to demonstrate it, but most of the exercise will be done in a Jupyter notebook.

One advantage of Spyder is that you can simply work with Python source files (`.py`). In particular, it makes it easier to transition from experimenting to more serious development. However, Jupter notebook offer the possibility to nicely mix text, code and output, which is not possibly in simple Python files.

## Jupyter notebook

The Jupter notebook `01_basics.ipynb` used for this introduction is located in the subdirectory `src/`.

There are a few ways in which you can launch a Jupyter notebook:

1. You can launch Jupyter notebook from the terminal / Anaconda prompt. If you are on Windows, please open the Anaconda prompt from the Start Menu. If you are on macOS or linux, please open a terminal and activate conda by `conda activate`. Before launching Jupyter notebook, you should first navigate to the correct directory. In this case, you need to navigate to the directory in which you have cloned this repository. You can do so by using `cd [directory]` where you should replace `[directory]` with the actual directory. You can then run Jupyter notebook by `jupyter notebook`.

There are two others ways in which you can launch Jupyter notebook. However, unfortunately they will always start in a default directory (often your home directory), which you cannot change (easily). If you happened to have cloned this repository as a subdirectory of that default directory, these options could work for you, but if this is not the case, you need to use option (1).

2. You can launch Jupyter notebook from the Start Menu, but this only works on Windows.
3. You can launch Jupyter notebook from the Anaconda Navigator: see [here](https://docs.anaconda.com/anaconda/user-guide/getting-started/) for instructions.

Once you have launched Jupyter notebook, you should see a new browser window. It should list the various directories and files that are available in this repository, or your home directory if you launched via option (2) or (3). Please navigate to the `src` directory of this repository and click the `01-basics.ipynb` notebook.
