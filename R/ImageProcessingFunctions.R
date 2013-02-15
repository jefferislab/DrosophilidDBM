CMTKLevelset<-function(fin,fout,args='--binarize',...){
	cmd=paste("levelset",args,shQuote(fin),shQuote(fout))
	something_happened=RunCmdForNewerInput(cmd,fin,fout,...)
	return(fout)
}

#' Calculate Jacobian determinants for a given registration
#'
#' If fout refers to a directory then a default output filename
#' will be generated. e.g.:
#' if reg is /path/to/some/regs/myreg.list
#' and fout is /some/other/path/jacs
#' /some/other/path/jacs/myreg_jac.nrrd
CMTKJacobian<-function(target,reg,fout,args='',targetIsMask=TRUE,...){
	#if(missing(fout)) fout=sub("\\.list$","_jac.nrrd",basename(reg))
	if(length(fout)==1 && file.info(fout)$isdir){
		# if reg is /path/to/some/regs/myreg.list
		# and fout is /some/other/path/jacs
		# /some/other/path/jacs/myreg_jac.nrrd
		fout=file.path(fout,sub("\\.list$","_jac.nrrd",basename(reg)))
	}
	if(targetIsMask) args=paste(args,"--mask")
	cmd=paste("reformatx","--outfile",shQuote(fout),args,shQuote(target), "--jacobian",shQuote(reg))
	something_happened=RunCmdForNewerInput(cmd,c(reg,target),fout,...)
	return(fout)
}
