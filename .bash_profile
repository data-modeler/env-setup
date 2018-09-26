# Ensure user-installed binaries take precedence
export PATH=/usr/local/bin:$PATH
# Load .bashrc if it exists
test -f ~/.bashrc && source ~/.bashrc
export WORKON_HOME=$HOME/venvs
export PROJECT_HOME=$HOME/Development
export PIP_REQUIRE_VIRTUALENV=true

test -f ~/.envrc && source ~/.envrc

source ~/.local/bin/virtualenvwrapper.sh

source ~/.bash_prompt
