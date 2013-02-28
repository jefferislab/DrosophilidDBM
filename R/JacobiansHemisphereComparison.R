#this is for calculating the jacobian determinants to compare the two hemispheres of the brain
#for each sex for each species using the symmetric template for each sex. the symm. template is downsampled (2x2x2um voxels). 
#we only calculate the determinants for the masked region.

# Dsimulans
###########

# for female

leaconfig$Dsim$Fsym.reg=file.path(leaconfig$rootdir,"Dsimulans",'DsimFsym/Registration/warp')
leaconfig$Dsim$Fsym.jacs=file.path(leaconfig$rootdir,"Dsimulans",'DsimFsym/jacs')
if(!file.exists(leaconfig$Dsim$Fsym.jacs))
	dir.create(leaconfig$Dsim$Fsym.jacs)

# nb dir will only return things that end in .list
# nb sample randomises order of registration directories
# to avoid competition when multiple jobs are running this script
for(thisreg in sample(dir(leaconfig$Dsim$Fsym.reg,patt='\\.list$',full=T))){
	CMTKJacobian(target=leaconfig$Dsim$Fsym.2um.mask,reg=thisreg,fout=leaconfig$Dsim$Fsym.jacs,UseLock=TRUE)
}

# for male

leaconfig$Dsim$Msym.reg=file.path(leaconfig$rootdir,"Dsimulans",'DsimMsym/Registration/warp')
leaconfig$Dsim$Msym.jacs=file.path(leaconfig$rootdir,"Dsimulans",'DsimMsym/jacs')
if(!file.exists(leaconfig$Dsim$Msym.jacs))
	dir.create(leaconfig$Dsim$Msym.jacs)

# nb dir will only return things that end in .list
# nb sample randomises order of registration directories
# to avoid competition when multiple jobs are running this script
for(thisreg in sample(dir(leaconfig$Dsim$Msym.reg,patt='\\.list$',full=T))){
	CMTKJacobian(target=leaconfig$Dsim$Msym.2um.mask,reg=thisreg,fout=leaconfig$Dsim$Msym.jacs,UseLock=TRUE)
}

