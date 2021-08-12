function ktp --wraps='kc top pod --use-protocol-buffers' --description 'alias ktp=kc top pod --use-protocol-buffers'
  kc top pod --use-protocol-buffers $argv; 
end
