function getcol -d "extract column n using awk"
  command awk "{print \$$argv}"
end
