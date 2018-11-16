echo
echo "Installing Java 8"
asdf plugin-add java
asdf install java oracle-8.191
asdf global java oracle-8.191
source ${MY_DIR}/scripts/opt-in/java-tools.sh
