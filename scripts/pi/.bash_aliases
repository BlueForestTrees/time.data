alias aliases="nano ~/.bash_aliases"
alias ports="sudo netstat -tulpn"
alias update="source ~/.bashrc && cp /home/pi/.bash_aliases /var/lib/time.data/scripts/pi/.bash_aliases"
alias psgrep='function _psgrep(){ ps -aux | grep "$1"; };_psgrep'
alias portuse='function _portuse(){ sudo netstat -peant | grep "$1 "; };_portuse'


# TIME
alias rabbit="java -jar /var/lib/time/messaging.console.jar"
alias golog="cd /var/log/time && ls -l"
alias gojars="cd /var/lib/time && ls -l"
alias goconf="cd /var/lib/time.data/conf/pi && ls -l"
alias gosystemd="cd /etc/systemd/system/ && ls -l"
alias goscripts="cd /var/lib/time.data/scripts/pi && ls -l"
alias godata="cd /var/lib/time.data && ls -l"
alias goapache="cd /etc/apache2 && ls -l"
alias editapache="sudo nano /etc/apache2/sites-enabled/000-default.conf"

#TIME LOGS
alias flushlog="rm /var/log/time/*.log"
alias tailmeta="tail -f /var/log/time/meta.to.index.log"
alias taillive="tail -f /var/log/time/liveparse.log"
alias tailman="tail -f /var/log/time/index.manage.log"
alias tailweb="tail -f /var/log/time/time.web.log"
alias allcat="golog && cat meta.to.index.log && cat liveparse.log && cat index.manage.log && cat time.web.log"

#TIME SERVICES
alias startmeta="sudo systemctl restart meta.to.index.service && statusmeta"
alias stopmeta="sudo systemctl stop meta.to.index.service && statusmeta"
alias statusmeta="systemctl status meta.to.index.service"

alias startlive="sudo systemctl restart liveparse.service && statuslive"
alias stoplive="sudo systemctl stop liveparse.service && statuslive"
alias statuslive="systemctl status liveparse.service"

alias startman="sudo systemctl restart index.manage.service && statusman"
alias stopman="sudo systemctl stop index.manage.service && statusman"
alias statusman="systemctl status index.manage.service"

alias startweb="sudo systemctl restart time.web.service && statusweb"
alias stopweb="sudo systemctl stop time.web.service && statusweb"
alias statusweb="systemctl status time.web.service"

alias startfront="sudo systemctl restart apache2.service && statusfront"
alias stopfront="sudo systemctl stop apache2.service && statusfront"
alias statusfront="systemctl status apache2.service"

alias allstatuses="statusmeta; statuslive; statusman; statusweb; statusfront"
alias allstart="startmeta; startlive; startman; startweb; startfront"
alias allstop="stopmeta; stoplive; stopman; stopweb; stopfront"

# GIT
alias pullconf="git -C /var/lib/time.data pull"
alias fullconf="cd /var/lib/time.data && full 'autopi' master && cd -"
alias rmorig="find . -name '*.orig' -type f -delete"
alias st="git status"
alias cho='function _checkout(){ git checkout "$1"; };_checkout'
alias pull="git pull"
alias push='function _push(){ git push; };_push'
alias pushf='function _pushf(){ git push -f origin "$1"; };_pushf'
alias stash="git stash"
alias stash-pop="git stash pop"
alias fetch="git fetch"
alias branch='function _branch(){ git branch "$1"; git checkout "$1"; git push --set-upstream origin "$1"; };_branch'
alias unbranch='function _unbranch(){ git branch -D "$1"; git push origin --delete "$1"; };_unbranch'
alias branches="git branch -a"
alias addAll="git add -A"
alias add='function _add(){ git add --all "$1"; };_add'
alias commit='function _commit(){ git commit -m "$1"; };_commit'
alias amend='function _amend(){ git commit --amend; };_amend'
alias uncommit='git reset HEAD~'
alias reset='git reset'
alias undo='function _unc(){ git checkout -- "$1" };_unc'
alias rebase='function _rebase(){ git rebase "$1"; };_rebase'
alias diff='function _diff(){ git diff "$1" };_diff'
alias full='function _full(){ st && addAll && commit "$1" && push && st; };_full'
alias seeall='data; database; indices; core; api; front;'
alias gmerge='function _merge(){ git merge --no-ff "$1"; };_merge'
