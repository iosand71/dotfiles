function kaf --wraps='kc apply -f' --description 'alias kaf=kc apply -f'
  kc apply -f $argv; 
end
