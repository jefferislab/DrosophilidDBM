
# Set paths etc for fly circuit
findDirFromList<-function(dirs,msg="Unable to find any directories"){
	dirs=normalizePath(dirs)
	for(d in dirs){
		if(file.exists(d)) return(d)
	}
	stop(msg)
}

a=attr(body(function() {}),'srcfile')
if(is.null(a)) {
  d=findDirFromList("~/projects/DrosophilidDBM/R")
} else {
  d=dirname(normalizePath(a$filename))
}
leaconfig=list(srcdir=d)

# set root directory
leaconfig$rootdir=findDirFromList(c("~/projects/DrosophilidDBM", "/Volumes/JData3/JPeople/Lea/DrosophilidDBM", "/Volumes/JData/JPeople/Lea/DrosophilidDBM"),
  msg="Unable to locate root directory for DrosophilidDBM")

leaconfig$startup=file.path(leaconfig$srcdir,"LeaStartup.R")
leaconfig$dbdir=file.path(dirname(leaconfig$srcdir),"db")
leaconfig$datadir=file.path(leaconfig$rootdir,"data")
if(!file.exists(leaconfig$datadir))
	dir.create(leaconfig$datadir)

leaconfig$FunctionFiles=list.files(leaconfig$srcdir,patt="Functions",full=T,recurs=T)

leaconfig$figdir=file.path(leaconfig$rootdir,'figout')

for (MyPath in leaconfig$FunctionFiles) {
	try(source(MyPath))
}

findExecutable<-function(exe,extradirs){
	# quick function to find an executable file
	if(!missing(extradirs)) {
		extrapaths=file.path(extradirs,exe)
		exeexists=file.exists(extrapaths)
		if(any(exeexists)) return(extrapaths[exeexists][1])
	}
	cmd=paste("which",shQuote(exe))
	whichres=system(cmd)
	if(whichres==0) system(cmd,intern=TRUE) 
	else NULL
}

# Start by sourcing Greg's AnalysisSuite functions
source("~/projects/AnalysisSuite/R/Code/Startup.R")

# leave a sensible working directory
setwd(leaconfig$rootdir)