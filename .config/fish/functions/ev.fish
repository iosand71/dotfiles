function ev --wraps='echo $argv | bc -l' --description 'alias ev=echo $argv | bc -l'
  echo $argv | bc -l $argv; 
end
