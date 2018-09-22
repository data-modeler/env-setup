# env-setup

## Ubuntu
To configure a new machine or environment, run the following:
```
sudo apt-get update
sudo apt-get install -y git
mkdir ~/myconfig && cd $_
git clone https://github.com/data-modeler/env-setup.git
```

Then run:
```
source ~/environ-setup.sh
```

This will install python and configure virtual environments with `virtualenvwrapper`, install and configure vim and tmux, configure other basic settings, and install Docker.

