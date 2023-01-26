
alias kubeloginreset="killall kubecolor-oidc_login"
alias k=kubecolor
alias kg="kubecolor get"
alias kd="kubecolor describe"
alias kwatch="watch kubecolor get"
alias kevents="kubecolor get events --watch"
alias kctx=kubectx
alias kns=kubens
alias d=docker
alias klog="kubecolor logs --follow"
alias tf=terraform
kbash() { kubecolor exec -it $@ -- bash } 
export kd="--dry-run=client -oyaml"
# do not use less for aws command
export AWS_PAGER=""

