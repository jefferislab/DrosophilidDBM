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
