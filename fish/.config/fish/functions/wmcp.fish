function wmcp -d "Copy files from work machine to local"
  scp -v "$WORK_USER@$WORK_MAC_DESKTOP:$argv[1]" "$argv[2]"
end
