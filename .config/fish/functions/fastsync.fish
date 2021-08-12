function fastsync --wraps=rsync\ -e\ \'ssh\ -c\ aes128-ctr\ -ax\'\ -avz\  --description alias\ fastsync=rsync\ -e\ \'ssh\ -c\ aes128-ctr\ -ax\'\ -avz\ 
  rsync -e 'ssh -c aes128-ctr -ax' -avz  $argv; 
end
