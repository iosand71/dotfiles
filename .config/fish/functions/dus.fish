function dus --wraps='du -cah | sort -h' --description 'alias dus=du -cah | sort -h'
  du -cah | sort -h $argv; 
end
