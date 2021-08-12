function jqp --wraps=jq\ -R\ \'fromjson\?\ \|\ select\(type\ ==\ \"object\"\)\' --description alias\ jqp=jq\ -R\ \'fromjson\?\ \|\ select\(type\ ==\ \"object\"\)\'
  jq -R 'fromjson? | select(type == "object")' $argv; 
end
