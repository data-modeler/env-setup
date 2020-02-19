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
source env-setup/environ-setup.sh
```

This will install python and configure virtual environments with `virtualenvwrapper`, install and configure vim and tmux, configure other basic settings, and install Docker.

### Set up git ssh
Follow the directions here: https://help.github.com/en/github/authenticating-to-github/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent for more details, or follow these abridged instructions.

#### Create ssh key
```bash
ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
```
#### Start the ssh-agent and add the key to the agent
```bash
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa
```
#### Copy the public key and paste into github/bitbucket settings
```bash
sudo apt-get install -y xclip
xclip -sel clip < ~/.ssh/id_rsa.pub
```
