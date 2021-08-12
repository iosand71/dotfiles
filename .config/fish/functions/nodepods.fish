function nodepods --wraps='kubectl get pods --sort-by="{.spec.nodeName}" -o custom-columns="NAME:.metadata.name,NODE:.spec.nodeName,NAMESPACE:.metadata.namespace"' --description 'alias nodepods=kubectl get pods --sort-by="{.spec.nodeName}" -o custom-columns="NAME:.metadata.name,NODE:.spec.nodeName,NAMESPACE:.metadata.namespace"'
  kubectl get pods --sort-by="{.spec.nodeName}" -o custom-columns="NAME:.metadata.name,NODE:.spec.nodeName,NAMESPACE:.metadata.namespace" $argv; 
end
