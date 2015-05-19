# Automount NAS volumes
These repo contains files for auto mounting of the two following volumes:
- BACKUP
- PHOTOS\_DYNAX
Files needed for NAS Volumes automount in Yosemite because bug
## PRE-REQUISITES
`afpkick.sh` and `com.bertrand.mount\_nas.plist`
## INSTALLATION
Be sure /Users/Shared/scripts/ folder exists or create it.
	$ mkdir /Users/Shared/scripts
copy afpkick.sh to /Users/Shared/scripts/ folder
	$ cp afpkick.sh to /Users/Shared/scripts/
copy com.bertrand.mount\_nas.plist file in `~/Library/LaunchAgents folder`
	$ cp com.bertrand.mount_nas.plist ~/Library/LaunchAgents/
change user rights on file afpkick.sh
	$ sudo chmod +x afpkick.sh
then launch the daemon
	$ launchctl load ~/Library/LaunchAgents/com.bertrand.mount_nas.plist
## TROUBLESHOOTING
That should be OK. Take care of default Toolchain for user/password !
