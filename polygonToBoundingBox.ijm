n = roiManager('count');
for (i = 0; i < n; i++) {
    roiManager('select', i);
    run("To Bounding Box");
    roiManager("add");
}
roiIndexes = newArray(n);
for (i=0; i<roiIndexes.length; i++){
	roiIndexes[i] = i;
}
//Array.show(roiIndexes);
roiManager("select", roiIndexes);
roiManager("delete");
//roiManager("Show All");