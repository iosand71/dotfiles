function kap --wraps='kc get pods --all-namespaces' --description 'alias kap=kc get pods --all-namespaces'
  kc get pods --all-namespaces $argv; 
end
