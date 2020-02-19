# update and upgrade
sudo apt-get update
sudo apt-get upgrade -y

# install favorite things
sudo apt-get install -y vim tmux curl

# install python virtualenv
sudo apt-get install -y python python3-distutils python-setuptools python-pip python3-pip
pip install virtualenvwrapper
pip3 install jedi
pip3 install pylint

# copy files to home directory
cp .bash_prompt ~/.bash_prompt
cp .tmux.conf ~/.tmux.conf
cp .vimrc ~/.vimrc
cp .envrc ~/.envrc
cp .bash_profile ~/.bash_profile
cd ~/ && mkdir venv
mkdir development
echo "" >> .profile
echo "# load .bash_profile" >> .bashrc
echo "source .bash_profile" >> .bashrc

# install vim packages
# pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# solarized
cd ~/.vim/bundle
git clone git://github.com/altercation/vim-colors-solarized.git

# jedi
git clone git://github.com/davidhalter/jedi-vim.git

# install aws cli
cd ~/
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install

# install Docker dependencies
sudo apt install -y apt-transport-https ca-certificates software-properties-common

# add Docker GPG key and stable repo
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

# install Docker
sudo apt install -y docker-ce docker-compose
