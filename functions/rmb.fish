function rmb
  set DIR_TO_DELETE (pwd)
  cd ..
  rm -r $DIR_TO_DELETE
  set DIR_TO_DELETE ""
end
