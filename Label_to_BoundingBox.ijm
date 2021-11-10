roiManager("reset");

setBatchMode(true);

dir1 = getDirectory("Source folder");
dir2 = getDirectory("Target folder");

filelist = getFileList(dir1) 
for (i = 0; i < lengthOf(filelist); i++) {
    if (endsWith(filelist[i], ".tif")){ 
        roiManager("reset");
        open(dir1 + File.separator + filelist[i]);
        nameWithoutExt = File.nameWithoutExtension;
        // Convert label to bounding box and list them in ROI manager
		origTitle = getTitle();
		origID = getImageID();
		// Extract Bounding Box using MorpholibJ
		//run("Bounding Box", "label=d4-3-1.tif show image=d4-3-1.tif");
		run("Bounding Box", "label=origTitle show image=origTitle");
		run("To ROI Manager");
		roiManager("save", dir2 + File.separator + nameWithoutExt+"_BB_RoiSet.zip");
		selectImage(origID);
		//close();
		//selectWindow(nameWithoutExt+"-BBox");
		run("Close All");
    }
}
roiManager("reset");
setBatchMode(false);
