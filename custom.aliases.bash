# gh CLI
alias ghu='sudo apt update; sudo apt install gh'

# Vim
alias v='vim'

# Yarn
alias y='yarn'
alias y2='yarn set version berry'

# Bash-it
alias bt='bash-it'
alias btr='bash-it reload'
alias vbta='vim ~/.bash_it/aliases/custom.aliases.bash'

# Git
alias g='git'

# add
alias ga='git add'
alias gall='git add -A'
alias gap='git add -p'

# branch
alias gb='git branch'
alias gbD='git branch -D'
alias gba='git branch -a'
alias gbd='git branch -d'
alias gbm='git branch -m'
alias gbt='git branch --track'
alias gdel='git branch -D'

# commit
alias gc='git commit -v'
alias gca='git commit -v -a'
alias gcaa='git commit -a --amend -C HEAD' # Add uncommitted and unstaged changes to the last commit
alias gcam='git commit -v -am'
alias gcamd='git commit --amend'
alias gcm='git commit -v -m'
alias gci='git commit --interactive'
alias gcsam='git commit -S -am'

# checkout
alias gcb='git checkout -b'
alias gco='git checkout'
alias gcob='git checkout -b'
alias gcobu='git checkout -b ${USER}/'
alias gcom='git checkout master'
alias gcpd='git checkout master; git pull; git branch -D'
alias gct='git checkout --track'

# clone
alias gcl='git clone'

# cherry-pick
alias gcp='git cherry-pick'
alias gcpx='git cherry-pick -x'

# diff
alias gd='git diff'
alias gds='git diff --staged'
alias gdt='git difftool'

# log
alias gl='git log'
alias glg='git log --graph --pretty=format:'\''%C(bold)%h%Creset%C(magenta)%d%Creset %s %C(yellow)<%an> %C(cyan)(%cr)%Creset'\'' --abbrev-commit --date=relative'
alias glgf='git log --graph --date=short --pretty=format:'\''%C(auto)%h %Cgreen%an%Creset %Cblue%cd%Creset %C(auto)%d %s'\'''
alias glgs='glg --stat'
alias gll='git log --graph --pretty=oneline --abbrev-commit'
alias glnew='git log HEAD@{1}..HEAD@{0}' # Show commits since last pull, see http://blogs.atlassian.com/2014/10/advanced-git-aliases/
alias gwc='git whatchanged'

# merge
alias gm='git merge'

# mv
alias gmv='git mv'

# patch
alias gpatch='git format-patch -1'

# push
alias gp='git push'
alias gpd='git push --delete'
alias gpf='git push --force'
alias gpo='git push origin HEAD'
alias gpom='git push origin master'
alias gpu='git push --set-upstream'
alias gpunch='git push --force-with-lease'
alias gpuo='git push --set-upstream origin'
alias gpuoc='git push --set-upstream origin $(git symbolic-ref --short HEAD)'

# pull
alias gpl='git pull'
alias gplum='git pull upstream master'
alias gpp='git pull && git push'
alias gpr='git pull --rebase'

# remote
alias gr='git remote'
alias gra='git remote add'
alias grv='git remote -v'

# rm
alias grm='git rm'

# rebase
alias grb='git rebase'
alias grbc='git rebase --continue'
alias grm='git rebase master'
alias grmi='git rebase master -i'
alias gprom='git fetch origin master && git rebase origin/master && git update-ref refs/heads/master origin/master' # Rebase with latest remote master

# reset
alias gus='git reset HEAD'
alias gpristine='git reset --hard && git clean -dfx'

# status
alias gs='git status'
alias gss='git status -s'

# shortlog
alias gcount='git shortlog -sn'
alias gsl='git shortlog -sn'

# show
alias gsh='git show'

# stash
alias gst='git stash'
alias gstb='git stash branch'
alias gstd='git stash drop'
alias gstl='git stash list'
alias gstp='git stash pop'  # kept due to long-standing usage
alias gstpo='git stash pop' # recommended for it's symmetry with gstpu (push)

## 'stash push' introduced in git v2.13.2
alias gstpu='git stash push'
alias gstpum='git stash push -m'

# switch
# these aliases requires git v2.23+
alias gsw='git switch'
alias gswc='git switch --create'
alias gswm='git switch master'
alias gswt='git switch --track'

# tag
alias gt='git tag'
alias gta='git tag -a'
alias gtd='git tag -d'
alias gtl='git tag -l'
