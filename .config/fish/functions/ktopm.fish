function ktopm --wraps='kc top pod --sort-by=memory | head' --description 'alias ktopm=kc top pod --sort-by=memory | head'
  kc top pod --sort-by=memory | head $argv; 
end
