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
