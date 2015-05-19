nas_up=`ping -c 1 192.168.1.10 | grep icmp* | wc -l`
if [ $nas_up = 1 ]; then
 
	backup_mount=`mount | grep /BACKUP | awk '{print $3}'`
 
	if [ "$backup_mount" != "/Volumes/BACKUP" ]; then
		terminal-notifier -title 'Shares watchdog' -message 'Mounting BACKUP share'
		osascript -e 'mount volume "afp://192.168.1.10/BACKUP"'
	fi
 
 	photos_dynax_mount=`mount | grep /BACKU | awk '{print $3}'`
 
	if [ "$photos_dynax_mount" != "/Volumes/PHOTOS_DYNAX" ]; then
		terminal-notifier -title 'Shares watchdog' -message 'Mounting PHOTOS_DYNAX share'
		osascript -e 'mount volume "afp://192.168.1.10/PHOTOS_DYNAX"'
	fi
else
	terminal-notifier -title 'Shares watchdog' -message 'NAS is not reachable'
fi
