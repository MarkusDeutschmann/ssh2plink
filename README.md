# ssh2plink

A tiny wrapper for plink.exe just for faking vscode's [remote ssh extension](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-ssh)

## How to use

1. go build & put ssh2plink.exe on the plink.exe's location
2. Set "Remote.SSH: Path" setting on the Remote-SSH extention's settings to "(Your location of plink/ssh2plink)/ssh2plink.exe"

## Known issue

* Can't connect to new host with error messages below (Connect with putty and store key in cache beforehand.)

```txt
The server's host key is not cached in the registry. You
have no guarantee that the server is the computer you
think it is.
The server's rsa2 key fingerprint is:
ssh-rsa 2048 xx:xx:xx:xx:xx:xx:xx:xx:xx:xx:xx:xx:xx:xx:xx
If you trust this host, enter "y" to add the key to
PuTTY's cache and carry on connecting.
If you want to carry on connecting just once, without
adding the key to the cache, enter "n".
If you do not trust this host, press Return to abandon the
connection.
Store key in cache? (y/n)
```
