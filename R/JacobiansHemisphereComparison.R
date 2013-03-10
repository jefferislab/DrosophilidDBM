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

# Dvirilis
###########

# for female

leaconfig$Dvir$Fsym.reg=file.path(leaconfig$rootdir,"Dvirilis",'DvirFsym/Registration/warp')
leaconfig$Dvir$Fsym.jacs=file.path(leaconfig$rootdir,"Dvirilis",'DvirFsym/jacs')
if(!file.exists(leaconfig$Dvir$Fsym.jacs))
	dir.create(leaconfig$Dvir$Fsym.jacs)

# nb dir will only return things that end in .list
# nb sample randomises order of registration directories
# to avoid competition when multiple jobs are running this script
for(thisreg in sample(dir(leaconfig$Dvir$Fsym.reg,patt='\\.list$',full=T))){
	CMTKJacobian(target=leaconfig$Dvir$Fsym.2um.mask,reg=thisreg,fout=leaconfig$Dvir$Fsym.jacs,UseLock=TRUE)
}

# for male

leaconfig$Dvir$Msym.reg=file.path(leaconfig$rootdir,"Dvirilis",'DvirMsym/Registration/warp')
leaconfig$Dvir$Msym.jacs=file.path(leaconfig$rootdir,"Dvirilis",'DvirMsym/jacs')
if(!file.exists(leaconfig$Dvir$Msym.jacs))
	dir.create(leaconfig$Dvir$Msym.jacs)

# nb dir will only return things that end in .list
# nb sample randomises order of registration directories
# to avoid competition when multiple jobs are running this script
for(thisreg in sample(dir(leaconfig$Dvir$Msym.reg,patt='\\.list$',full=T))){
	CMTKJacobian(target=leaconfig$Dvir$Msym.2um.mask,reg=thisreg,fout=leaconfig$Dvir$Msym.jacs,UseLock=TRUE)
}

# Dmelanogaster
###########

# for female

leaconfig$Dmel$Fsym.reg=file.path(leaconfig$rootdir,"Dmelanogaster",'DmelFsym/Registration/warp')
leaconfig$Dmel$Fsym.jacs=file.path(leaconfig$rootdir,"Dmelanogaster",'DmelFsym/jacs')
if(!file.exists(leaconfig$Dmel$Fsym.jacs))
	dir.create(leaconfig$Dmel$Fsym.jacs)

# nb dir will only return things that end in .list
# nb sample randomises order of registration directories
# to avoid competition when multiple jobs are running this script
for(thisreg in sample(dir(leaconfig$Dmel$Fsym.reg,patt='\\.list$',full=T))){
	CMTKJacobian(target=leaconfig$Dmel$Fsym.2um.mask,reg=thisreg,fout=leaconfig$Dmel$Fsym.jacs,UseLock=TRUE)
}

# for male

leaconfig$Dmel$Msym.reg=file.path(leaconfig$rootdir,"Dmelanogaster",'DmelMsym/Registration/warp')
leaconfig$Dmel$Msym.jacs=file.path(leaconfig$rootdir,"Dmelanogaster",'DmelMsym/jacs')
if(!file.exists(leaconfig$Dmel$Msym.jacs))
	dir.create(leaconfig$Dmel$Msym.jacs)

# nb dir will only return things that end in .list
# nb sample randomises order of registration directories
# to avoid competition when multiple jobs are running this script
for(thisreg in sample(dir(leaconfig$Dmel$Msym.reg,patt='\\.list$',full=T))){
	CMTKJacobian(target=leaconfig$Dmel$Msym.2um.mask,reg=thisreg,fout=leaconfig$Dmel$Msym.jacs,UseLock=TRUE)
}

# Dyakuba
###########

# for female

leaconfig$Dyak$Fsym.reg=file.path(leaconfig$rootdir,"Dyakuba",'DyakFsym/Registration/warp')
leaconfig$Dyak$Fsym.jacs=file.path(leaconfig$rootdir,"Dyakuba",'DyakFsym/jacs')
if(!file.exists(leaconfig$Dyak$Fsym.jacs))
	dir.create(leaconfig$Dyak$Fsym.jacs)

# nb dir will only return things that end in .list
# nb sample randomises order of registration directories
# to avoid competition when multiple jobs are running this script
for(thisreg in sample(dir(leaconfig$Dyak$Fsym.reg,patt='\\.list$',full=T))){
	CMTKJacobian(target=leaconfig$Dyak$Fsym.2um.mask,reg=thisreg,fout=leaconfig$Dyak$Fsym.jacs,UseLock=TRUE)
}

# for male

leaconfig$Dyak$Msym.reg=file.path(leaconfig$rootdir,"Dyakuba",'DyakMsym/Registration/warp')
leaconfig$Dyak$Msym.jacs=file.path(leaconfig$rootdir,"Dyakuba",'DyakMsym/jacs')
if(!file.exists(leaconfig$Dyak$Msym.jacs))
	dir.create(leaconfig$Dyak$Msym.jacs)

# nb dir will only return things that end in .list
# nb sample randomises order of registration directories
# to avoid competition when multiple jobs are running this script
for(thisreg in sample(dir(leaconfig$Dyak$Msym.reg,patt='\\.list$',full=T))){
	CMTKJacobian(target=leaconfig$Dyak$Msym.2um.mask,reg=thisreg,fout=leaconfig$Dyak$Msym.jacs,UseLock=TRUE)
}

