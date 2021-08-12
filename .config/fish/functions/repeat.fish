function repeat --description "repeat command n times"
  for i in (seq 1 $argv[1])
    eval $argv[2..-1]
  end
end
