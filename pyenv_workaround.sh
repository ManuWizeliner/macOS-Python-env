#!/bin/zsh

######SETUP PYTHON VIRTUAL ENVIRONMENT FOR macOS 12 with silicon proccesor M1 

#Install/update xcode, will take some time
xcode-select --installxcode-select --install

#Install Roseta2
/usr/sbin/softwareupdate --install-rosetta --agree-to-license


#Python compilers recommended to leave as it is default in MacOS system
python --version should show default python 2 version installed
python3 --version should show default python 3 version installed

##### CREATE VIRTUAL ENV WITH HOMEBREW PYENV #########
#Install Homebrew 
arch -x86_64 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

#Install Homebrew packages
arch -x86_64 brew install openssl readline sqlite3 xz zlib pyenv bzip2

#Install python 3.10.3 
pyenv install 3.10.3 

#Install pip
arch -x86_64 brew install pipenv

#Create virtual env
cd <path to project folder>
pyenv local 3.10.3
pipenv install

#Activate the virtual env created
pipenv shell

#Deactivate virtual env
deactivate



####CREATE VIRTUAL ENV WITH VENV ########
#Install pip for python 3
curl https://bootstrap.pypa.io/get-pip.py | python3

#Create virtualenv with venv in python3
cd <path to project folder>
#Please note the following command will create the virtual env with the Python3 Global system version
python3 -m venv <venv_ProjectName>

#Activate the virtual env created
source ./venv_ProjectName/bin/activate

#Deactivate virtual env
deactivate



