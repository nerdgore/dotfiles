NVM_DIR="$HOME/.nvm"

git clone https://github.com/creationix/nvm.git $NVM_DIR
cd $NVM_DIR
git checkout v0.33.1

zsh ./nvm.zsh

nvm install node 6.9.1
nvm alias paas 6.9.1
nvm alias default paas
