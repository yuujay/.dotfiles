function setgitconfig
  isMWMachine
  set machine_code $status
  if [ $machine_code = 10 ]
      setMacIntelGPGKey
  else if [ $machine_code = 20 ]
      setMacAppleSiliconGPGKey
  else if [ $machine_code = 30 ]
      setDebianGPGKey
  else if [ $machine_code = 40 ]
      setDebianGPGKey
  else
      setDebianGPGKey
  end
end

function isMWMachine
    set host_machine $hostname
    if [ $host_machine = "ah-gumamahe-m" ]
        return 10
    if [ $host_machine = "ah-gumamahe1-m" ]
        return 20
    else if [ $host_machine = "ah-gumamahe-l" ]
        return 30
    else if [ $host_machine = "vdi-ah2ddp-029" ]
        return 40
    else
        return 50
    end
end

function setDebianGPGKey
    git config --global gpg.program /usr/bin/gpg
end

function setMacIntelGPGKey
    git config --global gpg.program /usr/local/bin/gpg
end

function setMacAppleSiliconGPGKey
    git config --global gpg.program /opt/homebrew/bin/gpg
end
