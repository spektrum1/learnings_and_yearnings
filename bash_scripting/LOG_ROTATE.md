This script will run some basic initial stages of log rotation. 

	 - Create an archive file which copies over the contents from the main log file.
	 - Zip archive files into a zip after reaching 3 archive files.

Regular log rotation would probably push to some repo and remove zip files after a certain amount of time or size but it felt reduntant to take it that far, as the purpose was to practice bash syntax.
