function kgni --wraps='kc get nodes -o wide | getcol 7' --description 'alias kgni=kc get nodes -o wide | getcol 7'
  kc get nodes -o wide | getcol 7 $argv; 
end
