# Dsimulans
###########

leaconfig$Dsim$IS1.stats=file.path(leaconfig$rootdir,"Dsimulans",'DsimDBM/stats')
if(!file.exists(leaconfig$Dsim$IS1.stats))
	dir.create(leaconfig$Dsim$IS1.stats)

# load spreadsheet with sexes

leaconfig$Dsim$brains=read.table(file.path(leaconfig$rootdir,"db",'DsimBrains.txt'),header=T)
rownames(leaconfig$Dsim$brains)=leaconfig$Dsim$brains$brain

# list the full path to jacobians
leaconfig$Dsim$IS1.jacfiles=dir(leaconfig$Dsim$IS1.jacs,full=T)
# figure out sex for each one
leaconfig$Dsim$IS1.jacfiles.sex=leaconfig$Dsim$brains[brain_from_path(leaconfig$Dsim$IS1.jacfiles),'sex']

# Barf if we couldn't figure out the sex of one of the brains
stopifnot(all(!is.na(leaconfig$Dsim$IS1.jacfiles.sex)))

CMTKTtest(leaconfig$Dsim$IS1.jacfiles[leaconfig$Dsim$IS1.jacfiles.sex=='M'],
	leaconfig$Dsim$IS1.jacfiles[leaconfig$Dsim$IS1.jacfiles.sex=='F'],
	out.stem=file.path(leaconfig$Dsim$IS1.stats,'MF'),
	mask=leaconfig$Dsim$IS1.2um.mask
)

# Dvirilis
###########

leaconfig$Dvir$IS1.stats=file.path(leaconfig$rootdir,"Dvirilis",'DvirDBM/stats')
if(!file.exists(leaconfig$Dvir$IS1.stats))
	dir.create(leaconfig$Dvir$IS1.stats)

# load spreadsheet with sexes

leaconfig$Dvir$brains=read.table(file.path(leaconfig$rootdir,"db",'DvirBrains.txt'),header=T)
rownames(leaconfig$Dvir$brains)=leaconfig$Dvir$brains$brain

# list the full path to jacobians
leaconfig$Dvir$IS1.jacfiles=dir(leaconfig$Dvir$IS1.jacs,full=T)
# figure out sex for each one
leaconfig$Dvir$IS1.jacfiles.sex=leaconfig$Dvir$brains[brain_from_path(leaconfig$Dvir$IS1.jacfiles),'sex']

# Barf if we couldn't figure out the sex of one of the brains
stopifnot(all(!is.na(leaconfig$Dvir$IS1.jacfiles.sex)))

CMTKTtest(leaconfig$Dvir$IS1.jacfiles[leaconfig$Dvir$IS1.jacfiles.sex=='M'],
	leaconfig$Dvir$IS1.jacfiles[leaconfig$Dvir$IS1.jacfiles.sex=='F'],
	out.stem=file.path(leaconfig$Dvir$IS1.stats,'MF'),
	mask=leaconfig$Dvir$IS1.2um.mask
)

