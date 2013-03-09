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

# Dvirilis
###########

# for female

leaconfig$Dvir$Fsym.stats=file.path(leaconfig$rootdir,"Dvirilis",'DvirFsym/stats')
if(!file.exists(leaconfig$Dvir$Fsym.stats))
	dir.create(leaconfig$Dvir$Fsym.stats)

# list the full path to jacobians
leaconfig$Dvir$Fsym.jacfiles=dir(leaconfig$Dvir$Fsym.jacs, patt="jac.nrrd",full=T)

# flip all the jacobians
for(thisjac in sample(leaconfig$Dvir$Fsym.jacfiles)){
	NrrdFlip(thisjac,axes=0,UseLock=TRUE,OverWrite="update")
}

# list the full path to the flipped jacobians
leaconfig$Dvir$Fsym.jacfiles.flip=sub("jac.nrrd",'jac-flip0.nrrd',leaconfig$Dvir$Fsym.jacfiles)

# Barf if we haven't made all the flipped jacobians we were expecting
stopifnot(all(file.exists(leaconfig$Dvir$Fsym.jacfiles.flip)))

CMTKTtest(leaconfig$Dvir$Fsym.jacfiles,
	leaconfig$Dvir$Fsym.jacfiles.flip,
	out.stem=file.path(leaconfig$Dvir$Fsym.stats,'LR'),
	mask=leaconfig$Dvir$Fsym.2um.mask,
	args="--paired"
)

# for male

leaconfig$Dvir$Msym.stats=file.path(leaconfig$rootdir,"Dvirilis",'DvirMsym/stats')
if(!file.exists(leaconfig$Dvir$Msym.stats))
	dir.create(leaconfig$Dvir$Msym.stats)

# list the full path to jacobians
leaconfig$Dvir$Msym.jacfiles=dir(leaconfig$Dvir$Msym.jacs, patt="jac.nrrd",full=T)

# flip all the jacobians
for(thisjac in sample(leaconfig$Dvir$Msym.jacfiles)){
	NrrdFlip(thisjac,axes=0,UseLock=TRUE,OverWrite="update")
}

# list the full path to the flipped jacobians
leaconfig$Dvir$Msym.jacfiles.flip=sub("jac.nrrd",'jac-flip0.nrrd',leaconfig$Dvir$Msym.jacfiles)

# Barf if we haven't made all the flipped jacobians we were expecting
stopifnot(all(file.exists(leaconfig$Dvir$Msym.jacfiles.flip)))

CMTKTtest(leaconfig$Dvir$Msym.jacfiles,
	leaconfig$Dvir$Msym.jacfiles.flip,
	out.stem=file.path(leaconfig$Dvir$Msym.stats,'LR'),
	mask=leaconfig$Dvir$Msym.2um.mask,
	args="--paired"
)

# Dmelanogaster
###########

# for female

leaconfig$Dmel$Fsym.stats=file.path(leaconfig$rootdir,"Dmelanogaster",'DmelFsym/stats')
if(!file.exists(leaconfig$Dmel$Fsym.stats))
	dir.create(leaconfig$Dmel$Fsym.stats)

# list the full path to jacobians
leaconfig$Dmel$Fsym.jacfiles=dir(leaconfig$Dmel$Fsym.jacs, patt="jac.nrrd",full=T)

# flip all the jacobians
for(thisjac in sample(leaconfig$Dmel$Fsym.jacfiles)){
	NrrdFlip(thisjac,axes=0,UseLock=TRUE,OverWrite="update")
}

# list the full path to the flipped jacobians
leaconfig$Dmel$Fsym.jacfiles.flip=sub("jac.nrrd",'jac-flip0.nrrd',leaconfig$Dmel$Fsym.jacfiles)

# Barf if we haven't made all the flipped jacobians we were expecting
stopifnot(all(file.exists(leaconfig$Dmel$Fsym.jacfiles.flip)))

CMTKTtest(leaconfig$Dmel$Fsym.jacfiles,
	leaconfig$Dmel$Fsym.jacfiles.flip,
	out.stem=file.path(leaconfig$Dmel$Fsym.stats,'LR'),
	mask=leaconfig$Dmel$Fsym.2um.mask,
	args="--paired"
)

# for male

leaconfig$Dmel$Msym.stats=file.path(leaconfig$rootdir,"Dmelanogaster",'DmelMsym/stats')
if(!file.exists(leaconfig$Dmel$Msym.stats))
	dir.create(leaconfig$Dmel$Msym.stats)

# list the full path to jacobians
leaconfig$Dmel$Msym.jacfiles=dir(leaconfig$Dmel$Msym.jacs, patt="jac.nrrd",full=T)

# flip all the jacobians
for(thisjac in sample(leaconfig$Dmel$Msym.jacfiles)){
	NrrdFlip(thisjac,axes=0,UseLock=TRUE,OverWrite="update")
}

# list the full path to the flipped jacobians
leaconfig$Dmel$Msym.jacfiles.flip=sub("jac.nrrd",'jac-flip0.nrrd',leaconfig$Dmel$Msym.jacfiles)

# Barf if we haven't made all the flipped jacobians we were expecting
stopifnot(all(file.exists(leaconfig$Dmel$Msym.jacfiles.flip)))

CMTKTtest(leaconfig$Dmel$Msym.jacfiles,
	leaconfig$Dmel$Msym.jacfiles.flip,
	out.stem=file.path(leaconfig$Dmel$Msym.stats,'LR'),
	mask=leaconfig$Dmel$Msym.2um.mask,
	args="--paired"
)

# Dyakuba
###########

# for female

leaconfig$Dyak$Fsym.stats=file.path(leaconfig$rootdir,"Dyakuba",'DyakFsym/stats')
if(!file.exists(leaconfig$Dyak$Fsym.stats))
	dir.create(leaconfig$Dyak$Fsym.stats)

# list the full path to jacobians
leaconfig$Dyak$Fsym.jacfiles=dir(leaconfig$Dyak$Fsym.jacs, patt="jac.nrrd",full=T)

# flip all the jacobians
for(thisjac in sample(leaconfig$Dyak$Fsym.jacfiles)){
	NrrdFlip(thisjac,axes=0,UseLock=TRUE,OverWrite="update")
}

# list the full path to the flipped jacobians
leaconfig$Dyak$Fsym.jacfiles.flip=sub("jac.nrrd",'jac-flip0.nrrd',leaconfig$Dyak$Fsym.jacfiles)

# Barf if we haven't made all the flipped jacobians we were expecting
stopifnot(all(file.exists(leaconfig$Dyak$Fsym.jacfiles.flip)))

CMTKTtest(leaconfig$Dyak$Fsym.jacfiles,
	leaconfig$Dyak$Fsym.jacfiles.flip,
	out.stem=file.path(leaconfig$Dyak$Fsym.stats,'LR'),
	mask=leaconfig$Dyak$Fsym.2um.mask,
	args="--paired"
)

# for male

leaconfig$Dyak$Msym.stats=file.path(leaconfig$rootdir,"Dyakuba",'DyakMsym/stats')
if(!file.exists(leaconfig$Dyak$Msym.stats))
	dir.create(leaconfig$Dyak$Msym.stats)

# list the full path to jacobians
leaconfig$Dyak$Msym.jacfiles=dir(leaconfig$Dyak$Msym.jacs, patt="jac.nrrd",full=T)

# flip all the jacobians
for(thisjac in sample(leaconfig$Dyak$Msym.jacfiles)){
	NrrdFlip(thisjac,axes=0,UseLock=TRUE,OverWrite="update")
}

# list the full path to the flipped jacobians
leaconfig$Dyak$Msym.jacfiles.flip=sub("jac.nrrd",'jac-flip0.nrrd',leaconfig$Dyak$Msym.jacfiles)

# Barf if we haven't made all the flipped jacobians we were expecting
stopifnot(all(file.exists(leaconfig$Dyak$Msym.jacfiles.flip)))

CMTKTtest(leaconfig$Dyak$Msym.jacfiles,
	leaconfig$Dyak$Msym.jacfiles.flip,
	out.stem=file.path(leaconfig$Dyak$Msym.stats,'LR'),
	mask=leaconfig$Dyak$Msym.2um.mask,
	args="--paired"
)



