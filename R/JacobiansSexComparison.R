#this is for calculating the jacobian determinants to compare the males and females
#for each species using the intersex template. the IS template is downsampled (2x2x2um voxels). 
#we only calculate the determinants for the masked region.

# Dsimulans
###########

leaconfig$Dsim$IS1.reg=file.path(leaconfig$rootdir,"Dsimulans",'DsimDBM/Registration/warp')
leaconfig$Dsim$IS1.jacs=file.path(leaconfig$rootdir,"Dsimulans",'DsimDBM/jacs')
if(!file.exists(leaconfig$Dsim$IS1.jacs))
	dir.create(leaconfig$Dsim$IS1.jacs)

# nb dir will only return things that end in .list
# nb sample randomises order of registration directories
# to avoid competition when multiple jobs are running this script
for(thisreg in sample(dir(leaconfig$Dsim$IS1.reg,patt='\\.list$',full=T))){
	CMTKJacobian(target=leaconfig$Dsim$IS1.2um.mask,reg=thisreg,fout=leaconfig$Dsim$IS1.jacs,UseLock=TRUE)
}

# D virilis
###########

leaconfig$Dvir$IS1.reg=file.path(leaconfig$rootdir,"Dvirilis",'DvirDBM/Registration/warp')
leaconfig$Dvir$IS1.jacs=file.path(leaconfig$rootdir,"Dvirilis",'DvirDBM/jacs')

if(!file.exists(leaconfig$Dvir$IS1.jacs))
	dir.create(leaconfig$Dvir$IS1.jacs)

# nb dir will only return things that end in .list
# nb sample randomises order of registration directories
# to avoid competition when multiple jobs are running this script
for(thisreg in sample(dir(leaconfig$Dvir$IS1.reg,patt='\\.list$',full=T))){
	CMTKJacobian(target=leaconfig$Dvir$IS1.2um.mask,reg=thisreg,fout=leaconfig$Dvir$IS1.jacs,UseLock=TRUE)
}

# D melanogaster
###########

leaconfig$Dmel$IS1.reg=file.path(leaconfig$rootdir,"Dmelanogaster",'DmelDBM/Registration/warp')
leaconfig$Dmel$IS1.jacs=file.path(leaconfig$rootdir,"Dmelanogaster",'DmelDBM/jacs')

if(!file.exists(leaconfig$Dmel$IS1.jacs))
	dir.create(leaconfig$Dmel$IS1.jacs)

# nb dir will only return things that end in .list
# nb sample randomises order of registration directories
# to avoid competition when multiple jobs are running this script
for(thisreg in sample(dir(leaconfig$Dmel$IS1.reg,patt='\\.list$',full=T))){
	CMTKJacobian(target=leaconfig$Dvir$IS1.2um.mask,reg=thisreg,fout=leaconfig$Dvir$IS1.jacs,UseLock=TRUE)
}

# Dyakuba - can't use yet since files don't exist yet 
###########

leaconfig$Dyak$IS1.reg=file.path(leaconfig$rootdir,"Dyakuba",'DyakDBM/Registration/warp')
leaconfig$Dyak$IS1.jacs=file.path(leaconfig$rootdir,"Dyakuba",'DyakDBM/jacs')
if(!file.exists(leaconfig$Dyak$IS1.jacs))
	dir.create(leaconfig$Dyak$IS1.jacs)

# nb dir will only return things that end in .list
# nb sample randomises order of registration directories
# to avoid competition when multiple jobs are running this script
for(thisreg in sample(dir(leaconfig$Dyak$IS1.reg,patt='\\.list$',full=T))){
	CMTKJacobian(target=leaconfig$Dyak$IS1.2um.mask,reg=thisreg,fout=leaconfig$Dyak$IS1.jacs,UseLock=TRUE)
}

