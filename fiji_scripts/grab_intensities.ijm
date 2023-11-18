open();
path = "/home/brandon/Desktop/129L_project/intensity_data/frame_"
makeRectangle(94, 386, 1184, 82); // Need to make dynamic

for (i = 1; i <= nSlices; i++) {
    setSlice(i);
    savePlotProfile(path + i + ".csv");
}

function savePlotProfile(path) {	
	run("Clear Results");
	profile = getProfile();
	for (i=0; i<profile.length; i++)
	  setResult("Value", i, profile[i]);
	updateResults();
	saveAs("Measurements", path);
}