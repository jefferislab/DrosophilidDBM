template_from_path<-function(f){
	
}


brain_from_path<-function(path){
	file=basename(path)
	sub("^[^_]+_([^-]+)-.*","\\1",path)
}
