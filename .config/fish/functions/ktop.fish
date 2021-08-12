function ktop --wraps='kc top pod --sort-by=cpu | head' --description 'alias ktop=kc top pod --sort-by=cpu | head'
  kc top pod --sort-by=cpu | head $argv; 
end
