# BlockWindows
Stop Windows 7 through 10 Nagging and Spying updates, Tasks, IPs, and services.  
Works with Windows 7 through 10.

## Files

### Scripts

+ `BlockWindows.bat`: Right Click and "Run as Admin".
+ `hosts.bat`: Appends current hosts file. Run from your Downloads directory.  
Works with Windows 7 and 8.  
Doesn't work on Windows 10, copy hosts file to your router or firewall if using Windows 10.
+ `hosts2.bat`: Blocks M$ hosts with firewall.  
Blocks most M$ sites Outlook, Hotmail, etc. --> REM any you use.
+ `unblock.bat`: Unblocks 'hosts2.bat' blocking.
+ `HideWindowsUpdates.vbs`: Hides blocked updates, to reinstall click 'show hidden updates'.
+ `DisableWiFiSense.reg`: Adds registry to disable WiFi Sense, which steals your wifi password without your consent.
+ `DisableGWX.reg`: Disable GWX notifications on Windows 7 to 8.1.

### Configuration

+ `hosts`: DNS file of MS hosts to block.
+ `hostlist`: MS Hosts file to blocking for router or firewall use.
+ `hosts-dnsmasq`: Hosts file for dd-wrt and other routers.

## Sources

I created this code from information from:
+ http://www.hakspek.com/security/windows-script-to-remove-all-windows-10-telemetry-updates/ (*Bitblp*)
+ http://serverfault.com/questions/145843/block-specific-windows-update-hotfix/341318 (*Colin Bowern and Opmet*)
+ https://www.astaro.org/gateway-products/web-protection-web-filtering-application-visibility-control/58583-heres-how-block-windows-10-spying-2.html (*Pascalgoty and Fuselet*)
+ http://www.sevenforums.com/windows-updates-activation/383140-kb3035583-reappeared-after-being-hidden-2.html#post3161128 (*UsernameIssues*)

---

**Please submit any updates**

PS There is a highly concerted effort by M$ to harass websites that link to this. I'm tired of constantly trying to convince website admins it's not spam.  
Please repost these URLs many places on social media, blogs, etc. I'm in it for the long haul.
+ https://blockwindows.wordpress.com/
+ https://github.com/WindowsLies/BlockWindows/
+ https://gitlab.com/windowslies/blockwindows/


## File Mirrors

**LATEST**  
http://mir.cr/1JDZGZXN  
SHA256 7905318a9d35b024f1bffc78d12a8e38a3deeed63a61792b2a274300addc5c87

**OLD**  
http://www.hakspek.com/wp-content/uploads/2015/08/block_w10.zip  
SHA256 5f02ddef572cb408c5a9e44387e7d07ee4c95843edcdc79fa690b5a9910f6c74
