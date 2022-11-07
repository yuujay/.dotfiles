function setgitconfig
  isMWMachine
  set machine_code $status
  if [ $machine_code = 10 ]
      setMWGitConfigs
  else
      setPersonalGitConfigs
  end
end

function isMWMachine
    set host_machine $hostname
    if [ $host_machine = "ah-gumamahe-m" ]
        return 10
    else
        return 20
    end
end

function setMWGitConfigs
    git config --global user.signingkey E75F9B5C9D012B01
    git config --global user.id gumamahe
    git config --global user.name "Gowtham Jaganathan"
    git config --global user.email gumamahe@mathworks.com
    git config --global gpg.program /usr/local/bin/gpg

end

function setPersonalGitConfigs
    git config --global user.signingkey 415F3412804BEE04
    git config --global user.name yuujay
    git config --global user.email gowtham.uj@gmail.com
    git config --global gpg.program /opt/homebrew/bin/gpg
end
