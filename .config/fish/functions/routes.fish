function routes --wraps='netstat -rn' --description 'alias routes=netstat -rn'
  netstat -rn $argv; 
end
