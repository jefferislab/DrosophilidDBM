CMTKLevelset<-function(fin,fout,args='--binarize --levelset-threshold 2'){
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
#' Compute t test for two groups of jacobian determinants
#'
#' note it is nearly always a good idea to log transform jacobians
CMTKTtest<-function(group1,group2,out.stem,mask=NULL,log=TRUE,args='',...){
	if(log) args=paste(args,'--log')
	if(!is.null(mask)) args=paste(args,"--mask",shQuote(mask))
	
	pgroup1=paste(shQuote(group1),collapse=" ")
	pgroup2=paste(shQuote(group2),collapse=" ")

	# p values and t statistics
	out.pvals=paste(out.stem,sep="-",'pvals.nrrd')
	out.tvals=paste(out.stem,sep="-",'tvals.nrrd')
	
	cmd=paste("ttest",args,"--outfile",shQuote(out.pvals),
		"--tstats-file",shQuote(out.tvals),
		pgroup1,"--",pgroup2)
	something_happened=RunCmdForNewerInput(cmd,c(group1,group2,mask),c(out.tvals,out.pvals),...)
	return(c(out.pvals=out.pvals,out.tvals=out.tvals))
}
