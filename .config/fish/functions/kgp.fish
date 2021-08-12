function kgp --wraps='kc get pods' --description 'alias kgp=kc get pods'
  kc get pods $argv; 
end
