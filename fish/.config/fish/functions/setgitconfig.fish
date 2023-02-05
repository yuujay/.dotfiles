function setgitconfig
  isMWMachine # We treat the iMac and debian VM as MW machines and laptop is not in the list to be considered.
  set machine_code $status
  if [ $machine_code = 10 ]
      setMWMacGPGKey
      setMWGitConfigs
  else if [ $machine_code = 20 ]
      setMWDebGPGKey
      setMWGitConfigs
  else
      setPersonalGitConfigs
  end
end

function isMWMachine
    set host_machine $hostname
    if [ $host_machine = "ah-gumamahe-m" ]
        return 10
    else if [ $host_machine = "ah-gumamahe-l" ]
        return 20
    else
        return 30
    end
end

function setMWMacGPGKey
    git config --global user.signingkey ECBC6ADC776F5C4A
    git config --global gpg.program /usr/local/bin/gpg
end

function setMWDebGPGKey
    git config --global user.signingkey 6D7D345C0D7FF6F2
    git config --global gpg.program /usr/bin/gpg
end

function setMWGitConfigs
    git config --global user.id gumamahe
    git config --global user.name "Gowtham Jaganathan"
    git config --global user.email gumamahe@mathworks.com
end

function setPersonalGitConfigs
    git config --global user.signingkey ECBC6ADC776F5C4A
    git config --global user.name yuujay
    git config --global user.email gowtham.uj@gmail.com
    git config --global gpg.program /usr/bin/gpg
end
