# Setting up the CWTS Server
* Install git-bash, miniconda

# Create a conda environment configuration for git bash
Creating a conda environment to isolate the packages installed for this project. In case you mess up something, your other projects are safe and you can simply delete this environment.

* Start git-bash
* Add conda to path, assuming that conda is installed under `/p/program/conda`: run `echo "export PATH='/p/program/conda':'/p/program/conda/Scripts':\$PATH" >> ~/.bashrc`
* Restart git-bash
* Tell conda that your are using bash shell: run `conda init bash`
* Copy the generated config to `.bashrc`, change `laikh` to your user name: run `cat /c/Users/laikh/.bash_profile >> ~/.bashrc`
* Restart git-bash
* Create an environment named "develop": run `conda create --name develop`
* Activate the environment: run `conda activate develop`

Next time, you can simply run `conda activate develop` to activate the environment.

# Install necessary packages
* Install main conda packages: `conda install jupyterlab pandas sqlalchemy pyodbc xgboost seaborn`
* Install conda-forge packages: `conda install -c conda-forge ipython-sql`
