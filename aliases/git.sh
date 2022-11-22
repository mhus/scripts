# https://dev.to/spike/simple-git-aliases-for-daily-purpose-4o8d
gs() {git status}
gc() {git commit -m $1}
gp() {git push}
gac() {git add . && git commit -m $1}
gacp() {git add . && git commit -m $1 && git push}
gst() {git stash}
gsta() {git stash apply}
gpst() {git push --set-upstream origin $1}
gco() {git checkout $1}

