# Dsimulans
###########

# for female

leaconfig$Dsim$Fsym.stats=file.path(leaconfig$rootdir,"Dsimulans",'DsimFsym/stats')
if(!file.exists(leaconfig$Dsim$Fsym.stats))
	dir.create(leaconfig$Dsim$Fsym.stats)

# list the full path to jacobians
leaconfig$Dsim$Fsym.jacfiles=dir(leaconfig$Dsim$Fsym.jacs, patt="jac.nrrd",full=T)

# flip all the jacobians
for(thisjac in sample(leaconfig$Dsim$Fsym.jacfiles)){
	NrrdFlip(thisjac,axes=0,UseLock=TRUE,OverWrite="update")
}

# list the full path to the flipped jacobians
leaconfig$Dsim$Fsym.jacfiles.flip=sub("jac.nrrd",'jac-flip0.nrrd',leaconfig$Dsim$Fsym.jacfiles)

# Barf if we haven't made all the flipped jacobians we were expecting
stopifnot(all(file.exists(leaconfig$Dsim$Fsym.jacfiles.flip)))

CMTKTtest(leaconfig$Dsim$Fsym.jacfiles,
	leaconfig$Dsim$Fsym.jacfiles.flip,
	out.stem=file.path(leaconfig$Dsim$Fsym.stats,'LR'),
	mask=leaconfig$Dsim$Fsym.2um.mask,
	args="--paired"
)

# for male

leaconfig$Dsim$Msym.stats=file.path(leaconfig$rootdir,"Dsimulans",'DsimMsym/stats')
if(!file.exists(leaconfig$Dsim$Msym.stats))
	dir.create(leaconfig$Dsim$Msym.stats)

# list the full path to jacobians
leaconfig$Dsim$Msym.jacfiles=dir(leaconfig$Dsim$Msym.jacs, patt="jac.nrrd",full=T)

# flip all the jacobians
for(thisjac in sample(leaconfig$Dsim$Msym.jacfiles)){
	NrrdFlip(thisjac,axes=0,UseLock=TRUE,OverWrite="update")
}

# list the full path to the flipped jacobians
leaconfig$Dsim$Msym.jacfiles.flip=sub("jac.nrrd",'jac-flip0.nrrd',leaconfig$Dsim$Msym.jacfiles)

# Barf if we haven't made all the flipped jacobians we were expecting
stopifnot(all(file.exists(leaconfig$Dsim$Msym.jacfiles.flip)))

CMTKTtest(leaconfig$Dsim$Msym.jacfiles,
	leaconfig$Dsim$Msym.jacfiles.flip,
	out.stem=file.path(leaconfig$Dsim$Msym.stats,'LR'),
	mask=leaconfig$Dsim$Msym.2um.mask,
	args="--paired"
)



