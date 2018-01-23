#!/bin/bash
# This modifies the PS1 to have a more stylish look(according to me)
# It also enables branch name auto-completion

cd 
curl -o ~/.git-prompt.sh -OL cdn.learnenough.com/git-prompt.sh
curl -o ~/.git-completion.bash -OL cdn.learnenough.com/git-completion.bash
chmod +x ~/.git-prompt.sh
chmod +x ~/.git-completion.bash

echo '# Git configuration
# Branch name in prompt
source ~/.git-prompt.sh
PS1="[\W$(__git_ps1 " (%s)")]\$ "
export PROMPT_COMMAND="echo -ne "\033]0;${PWD/#$HOME/~}\007""
# Tab completion for branch names
source ~/.git-completion.bash' >> ~/.bashrc
