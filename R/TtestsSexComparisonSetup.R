# Dsimulans
###########

leaconfig$Dsim$IS1.stats=file.path(leaconfig$rootdir,"Dsimulans",'DsimDBM/stats')
if(!file.exists(leaconfig$Dsim$IS1.stats))
	dir.create(leaconfig$Dsim$IS1.stats)

# load spreadsheet with sexes

leaconfig$Dsim$brains=read.table(file.path(leaconfig$rootdir,"db",'DsimBrains.txt'),header=T)
rownames(leaconfig$Dsim$brains)=leaconfig$Dsim$brains$brain

# list the full path to jacobians
leaconfig$Dsim$IS1.jacfiles=dir(leaconfig$Dsim$IS1.jacs,full=T,patt='\\.nrrd$')
# figure out sex for each one
leaconfig$Dsim$IS1.jacfiles.sex=leaconfig$Dsim$brains[brain_from_path(leaconfig$Dsim$IS1.jacfiles),'sex']

# Barf if we couldn't figure out the sex of one of the brains
stopifnot(all(!is.na(leaconfig$Dsim$IS1.jacfiles.sex)))

# Dvirilis
###########

leaconfig$Dvir$IS1.stats=file.path(leaconfig$rootdir,"Dvirilis",'DvirDBM/stats')
if(!file.exists(leaconfig$Dvir$IS1.stats))
	dir.create(leaconfig$Dvir$IS1.stats)

# load spreadsheet with sexes

leaconfig$Dvir$brains=read.table(file.path(leaconfig$rootdir,"db",'DvirBrains.txt'),header=T)
rownames(leaconfig$Dvir$brains)=leaconfig$Dvir$brains$brain

# list the full path to jacobians
leaconfig$Dvir$IS1.jacfiles=dir(leaconfig$Dvir$IS1.jacs,full=T,patt='\\.nrrd$')
# figure out sex for each one
leaconfig$Dvir$IS1.jacfiles.sex=leaconfig$Dvir$brains[brain_from_path(leaconfig$Dvir$IS1.jacfiles),'sex']

# Barf if we couldn't figure out the sex of one of the brains
stopifnot(all(!is.na(leaconfig$Dvir$IS1.jacfiles.sex)))


# Dmelanogaster
###########

leaconfig$Dmel$IS1.stats=file.path(leaconfig$rootdir,"Dmelanogaster",'DmelDBM/stats')
if(!file.exists(leaconfig$Dmel$IS1.stats))
	dir.create(leaconfig$Dmel$IS1.stats)

# load spreadsheet with sexes

leaconfig$Dmel$brains=read.table(file.path(leaconfig$rootdir,"db",'DmelBrains.txt'),header=T)
rownames(leaconfig$Dmel$brains)=leaconfig$Dmel$brains$brain

# list the full path to jacobians
leaconfig$Dmel$IS1.jacfiles=dir(leaconfig$Dmel$IS1.jacs,full=T,patt='\\.nrrd$')
# figure out sex for each one
leaconfig$Dmel$IS1.jacfiles.sex=leaconfig$Dmel$brains[brain_from_path(leaconfig$Dmel$IS1.jacfiles),'sex']

# Barf if we couldn't figure out the sex of one of the brains
stopifnot(all(!is.na(leaconfig$Dmel$IS1.jacfiles.sex)))

# Dyakuba
###########

leaconfig$Dyak$IS1.stats=file.path(leaconfig$rootdir,"Dyakuba",'DyakDBM/stats')
if(!file.exists(leaconfig$Dyak$IS1.stats))
	dir.create(leaconfig$Dyak$IS1.stats)

# load spreadsheet with sexes

leaconfig$Dyak$brains=read.table(file.path(leaconfig$rootdir,"db",'DyakBrains.txt'),header=T)
rownames(leaconfig$Dyak$brains)=leaconfig$Dyak$brains$brain

# list the full path to jacobians
leaconfig$Dyak$IS1.jacfiles=dir(leaconfig$Dyak$IS1.jacs,full=T,patt='\\.nrrd$')
# figure out sex for each one
leaconfig$Dyak$IS1.jacfiles.sex=leaconfig$Dyak$brains[brain_from_path(leaconfig$Dyak$IS1.jacfiles),'sex']

# Barf if we couldn't figure out the sex of one of the brains
stopifnot(all(!is.na(leaconfig$Dyak$IS1.jacfiles.sex)))
