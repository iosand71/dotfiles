function gps --wraps='gp -o ci.skip' --description 'alias gps=gp -o ci.skip'
  gp -o ci.skip $argv; 
end
