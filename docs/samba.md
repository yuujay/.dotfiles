- sudo apt install samba
- sudo mkdir /media/myfiles
- sudo chown $USER: /media/myfiles
- sudo vi /etc/samba/smb.conf
```conf
map to guest = never
...
[myfiles]
  path = /media/myfiles
  writeable=yes
  public=no
```

- sudo smbpasswd -a USERNAME
- sudo systemctl restart smbd

On mac `smb://<IP>/myfiles`

More info [in blog](https://chriskalos.notion.site/The-0-Home-Server-Written-Guide-5d5ff30f9bdd4dfbb9ce68f0d914f1f6#ad77305c83424605b859168b243ff81d)
