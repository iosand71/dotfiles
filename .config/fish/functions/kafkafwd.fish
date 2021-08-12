function kafkafwd --wraps='kc port-forward svc/yoga-dev-cluster-kafka-bootstrap -n kafka 9092:9092' --description 'alias kafkafwd=kc port-forward svc/yoga-dev-cluster-kafka-bootstrap -n kafka 9092:9092'
  kc port-forward svc/yoga-dev-cluster-kafka-bootstrap -n kafka 9092:9092 $argv; 
end
