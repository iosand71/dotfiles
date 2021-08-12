function mgupa
      for d in *
        pushd $d && gupa && popd
      end
    
end
