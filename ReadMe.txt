enscapeRenamer
To Do:
	* compare existing and new images to only void files that will result in a duplicate file name
	* option for single void folder vs multiple void folders

place this in your enscape output directory

export your enscape renderings 

	(they will look like Enscape_YYYY-MM-DD-HH-MM-SS_scene name.png)
	
run script

	If existing images are found in the folder that are not in the enscape format they are assumed void and moved to a void folder with the current date and time
	Images in the enscape naming format will be renamed to scene name.png
	Script will exit
	
	