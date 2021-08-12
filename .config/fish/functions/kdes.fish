function kdes --wraps='kc describe pods' --description 'alias kdes=kc describe pods'
  kc describe pods $argv; 
end
