# Setting up the CWTS Server
* Install git-bash, miniconda

# Conda environment configuration
* Start git-bash
* Add conda to path `echo "export PATH='/p/program/conda':'/p/program/conda/Scripts':\$PATH" >> ~/.bashrc`
* Restart git-bash
* Run `conda init bash`
* Copy the generated config to `.bashrc`: `cat /c/Users/laikh/.bash_profile >> ~/.bashrc`
* Restart git-bash
* Create an environment named "develop": `conda create --name develop`
* `conda activate develop`
