
alias kubeloginreset="killall kubectl-oidc_login"
alias k=kubectl
alias kg="kubectl get"
alias kd="kubectl describe"
alias kwatch="watch kubectl get"
alias kevents="kubectl get events --watch"
alias kctx=kubectx
alias kns=kubens
alias d=docker
alias klog="kubectl logs --follow"
alias tf=terraform
kbash() { kubectl exec -it $@ -- bash } 
export kd="--dry-run=client -oyaml"
# do not use less for aws command
export AWS_PAGER=""

