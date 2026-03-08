a shell script

check that OPS_REPO is http://github.com/nuvolaris/bestia 
and OPS_BRANCH is bestia.

If not add to .bashrc and to .zsh (on Mac)
and set the variables.

Then execute a  `curl -fsSL n7s.co/get-ops | bash` 

Source the bashrc or zshrc

Execute `ops -t` to load the dependencies

Finally installs the plugin:

ops -plugin https://github.com/trustable-ai/olaris-aid
