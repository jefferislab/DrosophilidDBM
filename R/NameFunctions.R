template_from_path<-function(f){
	
}

brain_from_path<-function(path){
	file=basename(path)
	# first remove template prefix (if it exists)
	trimmedfile=sub("^[A-Za-z]{2,6}([-0-9]{1,2}|IS)_","",file)
	# now go up to first -
	sub("^([^-]+?)(-|stitched).*","\\1",trimmedfile)
}

slide_from_brain<-function(brain){
	sub("^([A-Z]{3,5}).*","\\1",brain)
}