CMTKLevelset<-function(fin,fout,args='--binarize',...){
	cmd=paste("levelset",args,shQuote(fin),shQuote(fout))
	success=RunCmdForNewerInput(cmd,fin,fout,...)
	if(!success) stop("Levelset failed")
	return(fout)
}
