alias conda_init='eval "$(/home/dave/miniconda3/bin/conda shell.bash hook)"'

### Git aliases ###

source /usr/share/bash-completion/completions/git

alias gsh='git stash'
__git_complete gsh __git_stash

alias gst='git status'
__git_complete gst __git_status

alias grb='git rebase'
__git_complete grb __git_rebase

alias gbs='git bisect'
__git_complete gbs __git_rebase

alias g="git"
__git_complete g __git_main

alias gc="git checkout"
__git_complete gc _git_checkout

alias gp="git push"
__git_complete gp _git_push

# Reset head to origin
alias grho='git reset --hard origin/$(git rev-parse --abbrev-ref HEAD)'

alias grh="git reset --hard"

alias gr="git reset"

alias gf="git fetch"

alias gsign="git rebase --exec 'git commit --amend --no-edit -n -S' -i"

### Build infrastructure ###

alias mj='make -j4'

alias bejq='curl http://localhost:8080/nodes/ | jq > ../json_nodes/nodes.json'

alias bn='cmake -GNinja -DCMAKE_EXE_LINKER_FLAGS=-fuse-ld=gold -Wl,--threads -Wl,--thread-count=$(nproc) .. && ninja'

alias bndb='cmake -GNinja -DCMAKE_BUILD_TYPE=Debug -DCMAKE_EXE_LINKER_FLAGS=-fuse-ld=gold -Wl,--threads -Wl,--thread-count=$(nproc) .. && ninja'

alias bnas='cmake -DCMAKE_BUILD_TYPE=Debug -DASAN=ON -GNinja -DCMAKE_EXE_LINKER_FLAGS=-fuse-ld=gold -Wl,--threads -Wl,--thread-count=$(nproc) .. && ninja'

alias bnub='cmake -DCMAKE_BUILD_TYPE=Debug -DUBSAN=ON -GNinja -DCMAKE_EXE_LINKER_FLAGS=-fuse-ld=gold -Wl,--threads -Wl,--thread-count=$(nproc) .. && ninja'


### Services infrastructure

alias doclog='aws ecr get-login-password --region us-west-1 | docker login --username AWS --password-stdin 725306096176.dkr.ecr.us-west-1.amazonaws.com'

alias ecrlog='aws codeartifact login --tool pip --repository zenith_sdk_prototype --domain zenith --domain-owner 725306096176'

alias tf="terraform"

### Python aliases ###
alias pct='pre-commit run --all-files'


### Node aliases

alias nu='nvm use'
