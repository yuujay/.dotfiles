# Check to the see the args list. If array iterate over the list if not just back up the file
function restore
  mv $argv.backup $argv
end
