# NB Pipeline must be run first to set up variables
# source("RunPipeline.R", chdir = TRUE)

# Dsimulans
###########

outfile=file.path(leaconfig$datadir,'DsimSexPerms.rda')

if(RunCmdForNewerInput(NULL,leaconfig$Dsim$IS1.jacfiles,outfile,...)){
	# we have some work to do
	set.seed(42)
	results=replicate(2,CMTKTtest.Perm(leaconfig$Dsim$IS1.jacfiles[leaconfig$Dsim$IS1.jacfiles.sex=='M'],
		leaconfig$Dsim$IS1.jacfiles[leaconfig$Dsim$IS1.jacfiles.sex=='F'],
		mask=leaconfig$Dsim$IS1.2um.mask))
	save(results,file=outfile)
}

