# note: this script does not make much sense yet. 
###############

# NB Pipeline must be run first to set up variables
# source("RunPipeline.R", chdir = TRUE)
# source("NeuropilVolumes.R first, chdir = TRUE")

# Dsimulans
###########

# if pipeline and NeuropilVolumes.R is run this should be set up:
# compute the region statistics for all Dsim and Dmel sample brains compared to JRFC2_template
# Dsim=sapply(npvols$Dsim$DmelIS1,function(df) df[np_region,'sum']/sum(df[-1,'sum']))
# Dmel=sapply(npvols$Dmel$IS1,function(df) df[np_region,'sum']/sum(df[-1,'sum']))

# get region statistics from all the sample brains
allvals=c(Dsim,Dmel)
# randomly permute allvals
fakeIdxs=sample(length(allvals))
fakeDsimIdxs=sample(length(allvals),size=length(Dsim))


outfile=file.path(leaconfig$datadir,'DsimRegionPerms.rda')

if(RunCmdForNewerInput(NULL,leaconfig$datadir,outfile)){
	# we have some work to do
	set.seed(42)
	results=replicate(1000,CMTKTtest.Perm(fakeDsimIdxs,fakeDmelIdxs,
		mask=leaconfig$Dmel$IS1.2um.neuropilmask))
	save(results,file=outfile)
}


