cd /Volumes/LeaHD/DrosophilidDBM/R 
R
source("LeaStartup.R", chdir = TRUE)
setwd(file.path(leaconfig$rootdir,"R"))

# needs RunPipeline.R

# for Dsimulans
# specify the path to the downsampled 4um-IS-template I'm about to generate
leaconfig$Dsim$IS1.4um=file.path(leaconfig$rootdir,"Dsimulans",'DsimIS/FBIS1_4um.nrrd')

# make the further downsampled template brain for bridging registrations
NrrdResample(leaconfig$Dsim$IS1,leaconfig$Dmel$IS1.4um,voxdims=c(4,4,4))
# use cmtk levelset tool to make a binary mask
source("TtestsSexComparison.R", chdir = TRUE)

# Reformat image for bridging registrations
ReformatImage(floating='/Volumes/LeaHD/DrosophilidDBM/Dsimulans/DsimDBM/stats/MF-tvals.nrrd',target='/Volumes/LeaHD/DrosophilidDBM/Dmelanogaster/DmelDBM/refbrain/DmelIS1_2um.nrrd',registrations='/Volumes/LeaHD/DrosophilidDBM/Dmelanogaster/FBIS1_Bridging/Registration/warp/FBIS1_DsimIS1_01_warp_m0g80c4e1e-1x26r3.list',output='/Volumes/LeaHD/DrosophilidDBM/Dsimulans/DsimDBM/stats/DmelIS1_MF-tvals.nrrd')

# get t values of the registrations to the IS-template
# NB i just corrected MF-tvals to DmelIS1_MF-tvals
tvals.Dsim=Read3DDensityFromNrrd("/Volumes/LeaHD/DrosophilidDBM/Dsimulans/DsimDBM/stats/DmelIS1_MF-tvals.nrrd")
# image.gjdens(tvals.Dsim[,,35])
# convert infinite t-values (esp. those outside the mask) to NAs so Amira can deal with it
tvals.Dsim[!is.finite(tvals.Dsim)]=NA
Write3DDensityToNrrd(filename='/Volumes/LeaHD/DrosophilidDBM/Dsimulans/DsimDBM/stats/MF-tvals-NA.nrrd',tvals.Dsim)


# for Dvirilis
# specify the path to the downsampled 4um-IS-template I'm about to generate
leaconfig$Dvir$IS1.4um=file.path(leaconfig$rootdir,"Dvirilis",'DvirIS/FBIS1_4um.nrrd')

# make the further downsampled template brain for bridging registrations
NrrdResample(leaconfig$Dvir$IS1,leaconfig$Dmel$IS1.4um,voxdims=c(4,4,4))
# use cmtk levelset tool to make a binary mask
source("TtestsSexComparison.R", chdir = TRUE)

# Reformat image for bridging registrations
ReformatImage(floating='/Volumes/LeaHD/DrosophilidDBM/Dvirilis/DvirDBM/stats/MF-tvals.nrrd',target='/Volumes/LeaHD/DrosophilidDBM/Dmelanogaster/DmelDBM/refbrain/DmelIS1_2um.nrrd',registrations='/Volumes/LeaHD/DrosophilidDBM/FBIS1_Bridging/Registration/warp/FBIS1_DvirIS1_01_warp_m0g80c4e1e-1x26r3.list',output='/Volumes/LeaHD/DrosophilidDBM/Dvirilis/DvirDBM/stats/DmelIS1_MF-tvals.nrrd')


# get t values of the registrations to the IS-template
tvals.Dvir=Read3DDensityFromNrrd("/Volumes/LeaHD/DrosophilidDBM/Dvirilis/DvirDBM/stats/DmelIS1_MF-tvals.nrrd")
# convert infinite t-values (esp. those outside the mask) to NAs so Amira can deal with it
tvals.Dvir[!is.finite(tvals.Dvir)]=NA
Write3DDensityToNrrd(filename='/Volumes/LeaHD/DrosophilidDBM/Dvirilis/DvirDBM/stats/DmelIS1_MF-tvals.nrrd',tvals.Dvir)

# for Dyakuba
# specify the path to the downsampled 4um-IS-template I'm about to generate
leaconfig$Dyak$IS1.4um=file.path(leaconfig$rootdir,"Dyakuba",'DyakIS/FBIS1_4um.nrrd')

# make the further downsampled template brain 
NrrdResample(leaconfig$Dyak$IS1,leaconfig$Dmel$IS1.4um,voxdims=c(4,4,4))
# use cmtk levelset tool to make a binary mask
source("TtestsSexComparison.R", chdir = TRUE)

# get t values of the registrations to the IS-template
tvals.Dyak=Read3DDensityFromNrrd("/Volumes/LeaHD/DrosophilidDBM/Dyakuba/DyakDBM/stats/DmelIS1_MF-tvals.nrrd")
# convert infinite t-values (esp. those outside the mask) to NAs so Amira can deal with it
tvals.Dyak[!is.finite(tvals.Dyak)]=NA
Write3DDensityToNrrd(filename='/Volumes/LeaHD/DrosophilidDBM/Dyakuba/DyakDBM/stats/DmelIS1_MF-tvals.nrrd',tvals.Dyak)

