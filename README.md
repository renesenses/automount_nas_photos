# automount_nas_photos
Files needed for NAS Volumes automount in Yosemite because bug

PRE-REQUISITES :
  afpkick.sh
  com.bertrand.mount_nas.plist

USAGE :
be sure /Users/Shared/scripts/ folder exists or create it
copy afpkick.sh to /Users/Shared/scripts/ folder


copy com.bertrand.mount_nas.plist file in ~/Library/LaunchAgents folder

change user rights on file afpkick.sh
sudo chmod +x afpkick.sh

then launch the daemon :
launchctl load ~/Library/LaunchAgents/com.bertrand.mount_nas.plist
