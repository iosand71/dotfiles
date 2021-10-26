function d64 --wraps='echo -n $argv | base64 -d -' --description 'decode base64'
  echo -n $argv | base64 -d -;
end
