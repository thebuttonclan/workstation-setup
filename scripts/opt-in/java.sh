echo
echo "Installing most recent version of Java"
asdf plugin-add java
asdf install java openjdk-11
asdf global java openjdk-11
source ${MY_DIR}/scripts/opt-in/java-tools.sh
