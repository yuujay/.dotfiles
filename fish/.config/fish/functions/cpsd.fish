function cpsd -d "Copy files to shared directory"
  scp "$argv[1]" "$NETWORK_SHARED_PATH/$argv[2]"
end
