echo
echo "Configuring bash with bash-it"
brew install grc
brew install coreutils
brew install asdf
brew install watch
cp files/dircolors.ansi-dark ~/.dircolors
cp files/.inputrc ~/.inputrc
rm -rf ~/.bash_it
git clone https://github.com/Bash-it/bash-it.git ~/.bash_it
cp files/add_user_initials_to_git_prompt_info.bash ~/.bash_it/custom
cp files/bobby_pivotal/bobby_pivotal.theme.bash ~/.bash_it/themes/bobby/bobby.theme.bash
~/.bash_it/install.sh --silent
source ~/.bash_profile
bash-it enable completion git
bash-it enable plugin ssh
bash-it enable completion ssh
grep -q -F 'source /usr/local/opt/asdf/asdf.sh' ~/.bash_it/lib/custom.bash || echo 'source /usr/local/opt/asdf/asdf.sh' >> ~/.bash_it/lib/custom.bash
source /usr/local/opt/asdf/asdf.sh

echo
echo "Configuring direnv with bash-it"
brew install direnv
cp files/direnv.bash ~/.bash_it/custom/direnv.bash
