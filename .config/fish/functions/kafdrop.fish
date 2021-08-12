function kafdrop --wraps='kubectl port-forward svc/kafdrop -n kafka 9000:9000' --description 'alias kafdrop=kubectl port-forward svc/kafdrop -n kafka 9000:9000'
  kubectl port-forward svc/kafdrop -n kafka 9000:9000 $argv; 
end
