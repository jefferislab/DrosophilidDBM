CMTKLevelset<-function(fin,fout,args='--binary'){
	cmd=paste("levelset",args,shQuote(fin),shQuote(fout))
	rval=system(cmd)
	if(rval!=0) stop("Levelset failed")
	return(fout)
}
