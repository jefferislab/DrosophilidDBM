# NB Pipeline must be run first to set up variables
# source("RunPipeline.R", chdir = TRUE)

# Dsimulans
###########

outfile=file.path(leaconfig$datadir,'DsimSexPerms.rda')

if(RunCmdForNewerInput(NULL,leaconfig$Dsim$IS1.jacfiles,outfile)){
	# we have some work to do
	set.seed(42)
	results=replicate(1000,CMTKTtest.Perm(leaconfig$Dsim$IS1.jacfiles[leaconfig$Dsim$IS1.jacfiles.sex=='M'],
		leaconfig$Dsim$IS1.jacfiles[leaconfig$Dsim$IS1.jacfiles.sex=='F'],
		mask=leaconfig$Dsim$IS1.2um.mask))
	save(results,file=outfile)
}

# Dvirilis
###########

outfile=file.path(leaconfig$datadir,'DvirSexPerms.rda')

if(RunCmdForNewerInput(NULL,leaconfig$Dvir$IS1.jacfiles,outfile)){
	# we have some work to do
	set.seed(42)
	results=replicate(1000,CMTKTtest.Perm(leaconfig$Dvir$IS1.jacfiles[leaconfig$Dvir$IS1.jacfiles.sex=='M'],
		leaconfig$Dvir$IS1.jacfiles[leaconfig$Dvir$IS1.jacfiles.sex=='F'],
		mask=leaconfig$Dvir$IS1.2um.mask))
	save(results,file=outfile)
}

# Dmelanogaster
###########

outfile=file.path(leaconfig$datadir,'DmelSexPerms.rda')

if(RunCmdForNewerInput(NULL,leaconfig$Dmel$IS1.jacfiles,outfile)){
	# we have some work to do
	set.seed(42)
	results=replicate(1000,CMTKTtest.Perm(leaconfig$Dmel$IS1.jacfiles[leaconfig$Dmel$IS1.jacfiles.sex=='M'],
		leaconfig$Dmel$IS1.jacfiles[leaconfig$Dmel$IS1.jacfiles.sex=='F'],
		mask=leaconfig$Dmel$IS1.2um.mask))
	save(results,file=outfile)
}


# Dyakuba
###########

outfile=file.path(leaconfig$datadir,'DyakSexPerms.rda')

if(RunCmdForNewerInput(NULL,leaconfig$Dyak$IS1.jacfiles,outfile)){
	# we have some work to do
	set.seed(42)
	results=replicate(1000,CMTKTtest.Perm(leaconfig$Dyak$IS1.jacfiles[leaconfig$Dyak$IS1.jacfiles.sex=='M'],
		leaconfig$Dyak$IS1.jacfiles[leaconfig$Dyak$IS1.jacfiles.sex=='F'],
		mask=leaconfig$Dyak$IS1.2um.mask))
	save(results,file=outfile)
}
