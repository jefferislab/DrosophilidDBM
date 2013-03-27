# calculate volumes of different neuropil regions using
# jacobian determinant volumes AND FBIS1_JFRC2 neuropil mask
source(file.path(leaconfig$srcdir,"JFRCMaterials.R"))

leaconfig$Dmel$IS1.2um.neuropilmask=file.path(leaconfig$rootdir,'FBIS1_Bridging/masks/FBIS12um_JFRC2.mask.nrrd')

npvols=list()
npvols$Dmel$IS1=lapply(leaconfig$Dmel$IS1.jacfiles,NeuropilStats,
	mask=leaconfig$Dmel$IS1.2um.neuropilmask,
	masklabels=jfrcmaterials)


############
# Dvirilis #
############
leaconfig$Dvir$FBIS1bridging=file.path(leaconfig$rootdir,'FBIS1_Bridging/Registration/warp/FBIS1_DvirIS1_01_warp_m0g80c4e1e-1x26r3.list')
leaconfig$Dvir$FBIS1bridging.jacs=file.path(leaconfig$rootdir,"FBIS1_Bridging",'Dvirjacs')
if(!file.exists(leaconfig$Dvir$FBIS1bridging.jacs))
	dir.create(leaconfig$Dvir$FBIS1bridging.jacs)

# this maps the Dvirilis reference brain onto the Dmelanogaster FBIS1 template
CMTKJacobian(target=leaconfig$Dmel$IS1.2um.mask,reg=leaconfig$Dvir$FBIS1bridging,
	fout=leaconfig$Dvir$FBIS1bridging.jacs,UseLock=TRUE)
# CMTKJacobian(target=leaconfig$Dmel$IS1.2um.mask,reg=leaconfig$Dvir$FBIS1bridging,
#	fout=leaconfig$Dvir$FBIS1bridging.jacs,UseLock=TRUE,args='--no-jacobian-correct-global')
# comment this out to deal with relative region volumes only.need it to get absolute values of all the
# regions. e.g. to put them into a table in um. 
	
vstats=NeuropilStats(dir(leaconfig$Dvir$FBIS1bridging.jacs,full=TRUE,patt='\\.nrrd$'),
	mask=leaconfig$Dmel$IS1.2um.neuropilmask,masklabels=jfrcmaterials)

# drop first row (exterior), 
# gives the volume of all the non-zero voxels (all voxels*8 since 8um^3 is voxel volume)
FBIS1.npvol=sum(vstats$n[-1])*8
# sum calculates the volume of Dvir template (by multiplying each voxel w/ average jacobian det)
DvirIS1.npvol=sum(vstats$sum[-1])*8
# e.g. test left lobula in male and female melanogaster
# but not so interesting really since the DBM lets us do this voxel by voxel!
# LO_L.prop=sapply(npvols$Dmel$IS1,function(df) df['LO_L','sum']/sum(df[-1,'sum']))
# t.test(LO_L.prop~leaconfig$Dmel$IS1.jacfiles.sex)

###########
# Generate jacobians for Dvir in FBIS1 space
# we can use these in order to ask if there is a consistent difference in neuropil volumes
# between Dvir and Dmel
# NB best to do this in terms of _relative_ neuropil volume not absolute

leaconfig$Dvir$DmelIS1.jacs=file.path(leaconfig$rootdir,"Dvirilis",'DvirDBM/DmelIS1jacs')
if(!file.exists(leaconfig$Dvir$DmelIS1.jacs))
	dir.create(leaconfig$Dvir$DmelIS1.jacs)

# ,leaconfig$Dvir$FBIS1bridging
# make jacobians for virilis samples against Dvir IS1 but then translated in to Dmel IS1
for(thisreg in sample(dir(leaconfig$Dvir$IS1.reg,patt='\\.list$',full=T))){
	CMTKJacobian(target=leaconfig$Dmel$IS1.2um.neuropilmask,
		reg=c(thisreg,leaconfig$Dvir$FBIS1bridging),fout=leaconfig$Dvir$DmelIS1.jacs,UseLock=TRUE)
}

# We can now compare the abs or relative (preferred) neuropil volumes for 
# Dvir vs Dmel

leaconfig$Dvir$DmelIS1.jacfiles=dir(leaconfig$Dvir$DmelIS1.jacs,full=T,patt='\\.nrrd$')

# first calculate per neuropil region statistics (e.g. average jacobian)
npvols$Dvir$DmelIS1=lapply(leaconfig$Dvir$DmelIS1.jacfiles,NeuropilStats,
	mask=leaconfig$Dmel$IS1.2um.neuropilmask,
	masklabels=jfrcmaterials)

# just one example:
# calculate proportion of total neuropil occupied by Left lobula
# Dvir.LO_L.prop=sapply(npvols$Dvir$DmelIS1,function(df) df['LO_L','sum']/sum(df[-1,'sum']))
# t.test(LO_L.prop,Dvir.LO_L.prop)

# NB we don't want to look at exterior and LOP_R is missing from the mask
for(np_region in setdiff(names(jfrcmaterials),c("Exterior",'LOP_R'))){
	Dvir=sapply(npvols$Dvir$DmelIS1,function(df) df[np_region,'sum']/sum(df[-1,'sum']))
	Dmel=sapply(npvols$Dmel$IS1,function(df) df[np_region,'sum']/sum(df[-1,'sum']))
	print(t.test(Dvir,Dmel))
}


############
# Dsimulans #
############
leaconfig$Dsim$FBIS1bridging=file.path(leaconfig$rootdir,'FBIS1_Bridging/Registration/warp/FBIS1_DsimIS1_01_warp_m0g80c4e1e-1x26r3.list')
leaconfig$Dsim$FBIS1bridging.jacs=file.path(leaconfig$rootdir,"FBIS1_Bridging",'Dsimjacs')
if(!file.exists(leaconfig$Dsim$FBIS1bridging.jacs))
	dir.create(leaconfig$Dsim$FBIS1bridging.jacs)

# this maps the Dsimulans reference brain onto the Dmelanogaster FBIS1 template
CMTKJacobian(target=leaconfig$Dmel$IS1.2um.mask,reg=leaconfig$Dsim$FBIS1bridging,
	fout=leaconfig$Dsim$FBIS1bridging.jacs,UseLock=TRUE)
# CMTKJacobian(target=leaconfig$Dmel$IS1.2um.mask,reg=leaconfig$Dsim$FBIS1bridging,
#	fout=leaconfig$Dsim$FBIS1bridging.jacs,UseLock=TRUE,args='--no-jacobian-correct-global')
# comment this out to deal with relative region volumes only.need it to get absolute values of all the
# regions. e.g. to put them into a table in um. 
	
vstats=NeuropilStats(dir(leaconfig$Dsim$FBIS1bridging.jacs,full=TRUE,patt='\\.nrrd$'),
	mask=leaconfig$Dmel$IS1.2um.neuropilmask,masklabels=jfrcmaterials)

# drop first row (exterior), 
# gives the volume of all the non-zero voxels (all voxels*8 since 8um^3 is voxel volume)
FBIS1.npvol=sum(vstats$n[-1])*8
# sum calculates the volume of Dsim template (by multiplying each voxel w/ average jacobian det)
DsimIS1.npvol=sum(vstats$sum[-1])*8
# e.g. test left lobula in male and female melanogaster
# but not so interesting really since the DBM lets us do this voxel by voxel!
# LO_L.prop=sapply(npvols$Dmel$IS1,function(df) df['LO_L','sum']/sum(df[-1,'sum']))
# t.test(LO_L.prop~leaconfig$Dmel$IS1.jacfiles.sex)

###########
# Generate jacobians for Dsim in FBIS1 space
# we can use these in order to ask if there is a consistent difference in neuropil volumes
# between Dsim and Dmel
# NB best to do this in terms of _relative_ neuropil volume not absolute

leaconfig$Dsim$DmelIS1.jacs=file.path(leaconfig$rootdir,"Dsimulans",'DsimDBM/DmelIS1jacs')
if(!file.exists(leaconfig$Dsim$DmelIS1.jacs))
	dir.create(leaconfig$Dsim$DmelIS1.jacs)

# ,leaconfig$Dsim$FBIS1bridging
# make jacobians for virilis samples against Dsim IS1 but then translated in to Dmel IS1
for(thisreg in sample(dir(leaconfig$Dsim$IS1.reg,patt='\\.list$',full=T))){
	CMTKJacobian(target=leaconfig$Dmel$IS1.2um.neuropilmask,
		reg=c(thisreg,leaconfig$Dsim$FBIS1bridging),fout=leaconfig$Dsim$DmelIS1.jacs,UseLock=TRUE)
}

# We can now compare the abs or relative (preferred) neuropil volumes for 
# Dsim vs Dmel

leaconfig$Dsim$DmelIS1.jacfiles=dir(leaconfig$Dsim$DmelIS1.jacs,full=T,patt='\\.nrrd$')

# first calculate per neuropil region statistics (e.g. average jacobian)
npvols$Dsim$DmelIS1=lapply(leaconfig$Dsim$DmelIS1.jacfiles,NeuropilStats,
	mask=leaconfig$Dmel$IS1.2um.neuropilmask,
	masklabels=jfrcmaterials)

# just one example:
# calculate proportion of total neuropil occupied by Left lobula
# Dsim.LO_L.prop=sapply(npvols$Dsim$DmelIS1,function(df) df['LO_L','sum']/sum(df[-1,'sum']))
# t.test(LO_L.prop,Dsim.LO_L.prop)

# NB we don't want to look at exterior and LOP_R is missing from the mask
for(np_region in setdiff(names(jfrcmaterials),c("Exterior",'LOP_R'))){
	Dsim=sapply(npvols$Dsim$DmelIS1,function(df) df[np_region,'sum']/sum(df[-1,'sum']))
	Dmel=sapply(npvols$Dmel$IS1,function(df) df[np_region,'sum']/sum(df[-1,'sum']))
	print(t.test(Dsim,Dmel))
}
