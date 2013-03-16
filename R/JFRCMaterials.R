jfrcmaterial_file=file.path(leaconfig$dbdir, 'jfrc-materials.txt')
jfrcmaterials=.ParseAmirameshParameters(readLines(jfrcmaterial_file))$Parameters$Materials

rownames(stats)=names(jfrcmaterials)[stats$X.M+1]


stats=CMTKStatistics('/Volumes/LeaHD/DrosophilidDBM/Dmelanogaster/DmelDBM/jacs/DmelIS1_AABG1stitched_01_warp_m0g80c8e1e-1x26r4_jac.nrrd',mask='/Volumes/LeaHD/DrosophilidDBM/FBIS1_Bridging/masks/FBIS12um_JFRC2.mask.nrrd')