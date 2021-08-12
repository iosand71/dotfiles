function nowstoring --wraps='sudo fs_usage -w -f filesys mds_stores' --description 'alias nowstoring=sudo fs_usage -w -f filesys mds_stores'
  sudo fs_usage -w -f filesys mds_stores $argv; 
end
