function openports --wraps='lsof -iTCP -sTCP:LISTEN -n -P' --description 'alias openports=lsof -iTCP -sTCP:LISTEN -n -P'
  lsof -iTCP -sTCP:LISTEN -n -P $argv; 
end
