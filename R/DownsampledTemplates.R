leaconfig$Dsim$IS1=file.path(leaconfig$rootdir,"Dsimulans",'DsimDBM/refbrain/DsimIS1.nrrd')
leaconfig$Dsim$IS1.2um=file.path(leaconfig$rootdir,"Dsimulans",'DsimDBM/refbrain/DsimIS1_2um.nrrd')

# make a downsampled template brain
NrrdResample(leaconfig$Dsim$IS1,leaconfig$Dsim$IS1.2um,voxdims=c(2,2,2))
# use cmtk levelset tool to make a binary mask

leaconfig$Dsim$IS1.2um.mask=sub(".nrrd","_mask.nrrd",leaconfig$Dsim$IS1.2um)
CMTKLevelset(leaconfig$Dsim$IS1.2um,leaconfig$Dsim$IS1.2um.mask)

