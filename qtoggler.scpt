do shell script "cd /Library/Application\\ Support/Qustodio/bin/qapp


if [ -f \"QUpdateService\" ]
then
	echo \"Current State: Q Enabled\"
	cd /Library/Application\\ Support/Qustodio/bin/qapp
	sudo mv QAppTray.app QAppTray.disabled
	sudo mv QUpdateService QUpdateService.disabled
	cd /Library/Application\\ Support/Qustodio/bin/qproxy
	sudo mv qengine qengine.disabled
	sudo killall QAppTray
	sudo killall qengine
	sudo killAll QUpdateService
	
	
	cd /Library/Application\\ Support/Qustodio
	sudo rm -R Logs
	
	echo \"Disabled Qustodio\"
else
	echo \"Current State: Q Disabled\"
	cd /Library/Application\\ Support/Qustodio/bin/qapp
	sudo mv QAppTray.disabled QAppTray.app
	sudo mv QUpdateService.disabled QUpdateService
	cd /Library/Application\\ Support/Qustodio/bin/qproxy
	sudo mv qengine.disabled qengine
	echo \"Enabled Qustodio\"
fi" with administrator privileges
