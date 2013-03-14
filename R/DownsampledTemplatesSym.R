#symmetric template brains

# Dsimulans
###########

# for female

leaconfig$Dsim$Fsym=file.path(leaconfig$rootdir,"Dsimulans",'DsimFsym/refbrain/Dsimf-1.nrrd')
leaconfig$Dsim$Fsym.2um=file.path(leaconfig$rootdir,"Dsimulans",'DsimFsym/refbrain/DsimFsym_2um.nrrd')

# make a downsampled template brain
NrrdResample(leaconfig$Dsim$Fsym,leaconfig$Dsim$Fsym.2um,voxdims=c(2,2,2))
# use cmtk levelset tool to make a binary mask

leaconfig$Dsim$Fsym.2um.mask=sub(".nrrd","_mask.nrrd",leaconfig$Dsim$Fsym.2um)
CMTKLevelset(leaconfig$Dsim$Fsym.2um,leaconfig$Dsim$Fsym.2um.mask)

# for male

leaconfig$Dsim$Msym=file.path(leaconfig$rootdir,"Dsimulans",'DsimMsym/refbrain/DsimMsym.nrrd')
leaconfig$Dsim$Msym.2um=file.path(leaconfig$rootdir,"Dsimulans",'DsimMsym/refbrain/DsimMsym_2um.nrrd')

# make a downsampled template brain
NrrdResample(leaconfig$Dsim$Msym,leaconfig$Dsim$Msym.2um,voxdims=c(2,2,2))
# use cmtk levelset tool to make a binary mask

leaconfig$Dsim$Msym.2um.mask=sub(".nrrd","_mask.nrrd",leaconfig$Dsim$Msym.2um)
CMTKLevelset(leaconfig$Dsim$Msym.2um,leaconfig$Dsim$Msym.2um.mask)

# Dvirilis
###########

# for female

leaconfig$Dvir$Fsym=file.path(leaconfig$rootdir,"Dvirilis",'DvirFsym/refbrain/DvirFsym.nrrd')
leaconfig$Dvir$Fsym.2um=file.path(leaconfig$rootdir,"Dvirilis",'DvirFsym/refbrain/DvirFsym_2um.nrrd')

# make a downsampled template brain
NrrdResample(leaconfig$Dvir$Fsym,leaconfig$Dvir$Fsym.2um,voxdims=c(2,2,2))
# use cmtk levelset tool to make a binary mask

leaconfig$Dvir$Fsym.2um.mask=sub(".nrrd","_mask.nrrd",leaconfig$Dvir$Fsym.2um)
CMTKLevelset(leaconfig$Dvir$Fsym.2um,leaconfig$Dvir$Fsym.2um.mask)

# for male

leaconfig$Dvir$Msym=file.path(leaconfig$rootdir,"Dvirilis",'DvirMsym/refbrain/DvirMsym.nrrd')
leaconfig$Dvir$Msym.2um=file.path(leaconfig$rootdir,"Dvirilis",'DvirMsym/refbrain/DvirMsym_2um.nrrd')

# make a downsampled template brain
NrrdResample(leaconfig$Dvir$Msym,leaconfig$Dvir$Msym.2um,voxdims=c(2,2,2))
# use cmtk levelset tool to make a binary mask

leaconfig$Dvir$Msym.2um.mask=sub(".nrrd","_mask.nrrd",leaconfig$Dvir$Msym.2um)
CMTKLevelset(leaconfig$Dvir$Msym.2um,leaconfig$Dvir$Msym.2um.mask)

# Dmelanogaster
###########

# for female

leaconfig$Dmel$Fsym=file.path(leaconfig$rootdir,"Dmelanogaster",'DmelFsym/refbrain/Dmelf-1.nrrd')
leaconfig$Dmel$Fsym.2um=file.path(leaconfig$rootdir,"Dmelanogaster",'DmelFsym/refbrain/DmelFsym_2um.nrrd')

# make a downsampled template brain
NrrdResample(leaconfig$Dmel$Fsym,leaconfig$Dmel$Fsym.2um,voxdims=c(2,2,2))
# use cmtk levelset tool to make a binary mask

leaconfig$Dmel$Fsym.2um.mask=sub(".nrrd","_mask.nrrd",leaconfig$Dmel$Fsym.2um)
CMTKLevelset(leaconfig$Dmel$Fsym.2um,leaconfig$Dmel$Fsym.2um.mask)

# for male

leaconfig$Dmel$Msym=file.path(leaconfig$rootdir,"Dmelanogaster",'DmelMsym/refbrain/Dmelm-1.nrrd')
leaconfig$Dmel$Msym.2um=file.path(leaconfig$rootdir,"Dmelanogaster",'DmelMsym/refbrain/DmelMsym_2um.nrrd')

# make a downsampled template brain
NrrdResample(leaconfig$Dmel$Msym,leaconfig$Dmel$Msym.2um,voxdims=c(2,2,2))
# use cmtk levelset tool to make a binary mask

leaconfig$Dmel$Msym.2um.mask=sub(".nrrd","_mask.nrrd",leaconfig$Dmel$Msym.2um)
CMTKLevelset(leaconfig$Dmel$Msym.2um,leaconfig$Dmel$Msym.2um.mask)

# Dyakuba
###########

# for female

leaconfig$Dyak$Fsym=file.path(leaconfig$rootdir,"Dyakuba",'DyakFsym/refbrain/Dyakf-1.nrrd')
leaconfig$Dyak$Fsym.2um=file.path(leaconfig$rootdir,"Dyakuba",'DyakFsym/refbrain/DyakFsym_2um.nrrd')

# make a downsampled template brain
NrrdResample(leaconfig$Dyak$Fsym,leaconfig$Dyak$Fsym.2um,voxdims=c(2,2,2))
# use cmtk levelset tool to make a binary mask

leaconfig$Dyak$Fsym.2um.mask=sub(".nrrd","_mask.nrrd",leaconfig$Dyak$Fsym.2um)
CMTKLevelset(leaconfig$Dyak$Fsym.2um,leaconfig$Dyak$Fsym.2um.mask)

# for male

leaconfig$Dyak$Msym=file.path(leaconfig$rootdir,"Dyakuba",'DyakMsym/refbrain/DyakMsym.nrrd')
leaconfig$Dyak$Msym.2um=file.path(leaconfig$rootdir,"Dyakuba",'DyakMsym/refbrain/DyakMsym_2um.nrrd')

# make a downsampled template brain
NrrdResample(leaconfig$Dyak$Msym,leaconfig$Dyak$Msym.2um,voxdims=c(2,2,2))
# use cmtk levelset tool to make a binary mask

leaconfig$Dyak$Msym.2um.mask=sub(".nrrd","_mask.nrrd",leaconfig$Dyak$Msym.2um)
CMTKLevelset(leaconfig$Dyak$Msym.2um,leaconfig$Dyak$Msym.2um.mask)
