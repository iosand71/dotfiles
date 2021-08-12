function kcgi --wraps=kc\ get\ pods\ --all-namespaces\ -o\ jsonpath=\{..image\}\ \|tr\ -s\ \'\[\[:space:\]\]\'\ \'\\n\'\ \|sort\ \|uniq\ -c --description alias\ kcgi=kc\ get\ pods\ --all-namespaces\ -o\ jsonpath=\{..image\}\ \|tr\ -s\ \'\[\[:space:\]\]\'\ \'\\n\'\ \|sort\ \|uniq\ -c
  kc get pods --all-namespaces -o jsonpath={..image} |tr -s '[[:space:]]' '\n' |sort |uniq -c $argv; 
end
