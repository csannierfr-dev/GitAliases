#Git Command

function glg1(){
    git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all
}

function glg2() {
    git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n''          %C(white)%s%C(reset) %C(dim white)- %an%C(reset)' --all
}

function glg3(){
    git log --graph --abbrev-commit --decorate --date=relative --all
}



function g() { git }
function ga() { git add }
function gaa() { git add --all }
function gapa() { git add --patch }
function gau() { git add --update }
function gav() { git add --verbose }
function gap() { git apply }
function gb() { git branch }
function gba() { git branch -a }
function gbd() { git branch -d }
#function gbda() { git branch --no-color --merged | command grep -vE "^(\*|\s*(master|develop|dev)\s*$)" | command xargs -n 1 git branch -d }
function gbD() { git branch -D }
function gbl() { git blame -b -w }
function gbnm() { git branch --no-merged }
function gbr() { git branch --remote }
function gbs() { git bisect }
function gbsb() { git bisect bad }
function gbsg() { git bisect good }
function gbsr() { git bisect reset }
function gbss() { git bisect start }
function gc() { git commit -v }
function gc!() { git commit -v --amend }
function gcn!() { git commit -v --no-edit --amend }
function gca() { git commit -v -a }
function gca!() { git commit -v -a --amend }
function gcan!() { git commit -v -a --no-edit --amend }
function gcans!() { git commit -v -a -s --no-edit --amend }
function gcam() { git commit -a -m }
function gcsm() { git commit -s -m }
function gcb() { git checkout -b }
function gcf() { git config --list }
function gcl() { git clone --recurse-submodules }
function gclean() { git clean -id }
function gpristine() { git reset --hard && git clean -dfx }
function gcm() { git checkout master }
function gcd() { git checkout develop }
function gcmsg() { git commit -m }
function gco() { git checkout }
function gcount() { git shortlog -sn }
function gcp() { git cherry-pick }
function gcpa() { git cherry-pick --abort }
function gcpc() { git cherry-pick --continue }
function gcs() { git commit -S }
function gd() { git diff }
function gdca() { git diff --cached }
function gdcw() { git diff --cached --word-diff }
function gdct() { git describe --tags $(git rev-list --tags --max-count=1) }
function gds() { git diff --staged }
function gdt() { git diff-tree --no-commit-id --name-only -r }
function gdw() { git diff --word-diff }
function gf() { git fetch }
function gfa() { git fetch --all --prune }
function gfo() { git fetch origin }
function gfg() { git ls-files | grep }
function gg() { git gui citool }
function gga() { git gui citool --amend }
function ggpur() { ggu }
function ggpull() { git pull origin "$(git_current_branch)" }
function ggpush() { git push origin "$(git_current_branch)" }
function ggsup() { git branch --set-upstream-to=origin/$(git_current_branch) }
function gpsup() { git push --set-upstream origin $(git_current_branch) }
function ghh() { git help }
function gignore() { git update-index --assume-unchanged }
function gignored() { git ls-files -v | grep "^[[:lower:]]" }
function gk() { \gitk --all --branches }
function gke() { \gitk --all $(git log -g --pretty=%h) }
function gl() { git pull }
function glg() { git log --stat }
function glgp() { git log --stat -p }
function glgg() { git log --graph }
function glgga() { git log --graph --decorate --all }
function glgm() { git log --graph --max-count=10 }
function glo() { git log --oneline --decorate }
function glol() { git log --graph --pretty='%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' }
function glols() { git log --graph --pretty='%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --stat }
function glod() { git log --graph --pretty='%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ad) %C(bold blue)<%an>%Creset' }
function glods() { git log --graph --pretty='%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ad) %C(bold blue)<%an>%Creset' --date=short }
function glola() { git log --graph --pretty='%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --all }
function glog() { git log --oneline --decorate --graph }
function gloga() { git log --oneline --decorate --graph --all }
function glp() { _git_log_prettily }
function gm() { git merge }
function gmom() { git merge origin/master }
function gmt() { git mergetool --no-prompt }
function gmtvim() { git mergetool --no-prompt --tool=vimdiff }
function gmum() { git merge upstream/master }
function gma() { git merge --abort }
function gp() { git push }
function gpd() { git push --dry-run }
function gpf() { git push --force-with-lease }
function gpf!() { git push --force }
function gpoat() { git push origin --all && git push origin --tags }
function gpu() { git push upstream }
function gpv() { git push -v }
function gr() { git remote }
function gra() { git remote add }
function grb() { git rebase }
function grba() { git rebase --abort }
function grbc() { git rebase --continue }
function grbd() { git rebase develop }
function grbi() { git rebase -i }
function grbm() { git rebase master }
function grbs() { git rebase --skip }
function grev() { git revert }
function grh() { git reset }
function grhh() { git reset --hard }
function groh() { git reset origin/$(git_current_branch) --hard }
function grm() { git rm }
function grmc() { git rm --cached }
function grmv() { git remote rename }
function grrm() { git remote remove }
function grset() { git remote set-url }
function gru() { git reset -- }
function grup() { git remote update }
function grv() { git remote -v }
function gsb() { git status -sb }
function gsd() { git svn dcommit }
function gsh() { git show }
function gsi() { git submodule init }
function gsps() { git show --pretty=short --show-signature }
function gsr() { git svn rebase }
function gss() { git status -s }
function gst() { git status }
function gstaa() { git stash apply }
function gstc() { git stash clear }
function gstd() { git stash drop }
function gstl() { git stash list }
function gstp() { git stash pop }
function gsts() { git stash show --text }
function gstall() { git stash --all }
function gsu() { git submodule update }
function gts() { git tag -s }
function gtv() { git tag | Sort-Object -V }
function gunignore() { git update-index --no-assume-unchanged }
function gunwip() { git log -n 1 | grep -q -c "\-\-wip\-\-" && git reset HEAD~1 }
function gup() { git pull --rebase }
function gupv() { git pull --rebase -v }
function gupa() { git pull --rebase --autostash }
function gupav() { git pull --rebase --autostash -v }
function glum() { git pull upstream master }
function gwch() { git whatchanged -p --abbrev-commit --pretty=medium }
function gwip() { git add -A; git rm $(git ls-files --deleted) 2> /dev/null; git commit --no-verify --no-gpg-sign -m "--wip-- [skip ci]" }
