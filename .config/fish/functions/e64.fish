function e64 --wraps='echo -n $argv | base64 -' --description 'encode base64'
  command echo -n $argv | base64 -;
end
