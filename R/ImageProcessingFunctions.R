CMTKLevelset<-function(fin,fout,args='--binarize'){
	cmd=paste("levelset",args,shQuote(fin),shQuote(fout))
	rval=system(cmd)
	if(rval!=0) stop("Levelset failed")
	return(fout)
}
