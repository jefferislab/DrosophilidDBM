# This is for making the heatmaps for the HemisphereComparison with the same 
# t-range for both males and females
#############

# D simulans
#############

# for male
leaconfig$DsimMsym=file.path(leaconfig$rootdir,'Dsimulans/DsimMsym')

# Note LR => +ve tvals -> left-enlarged
tvals=Read3DDensityFromNrrd(file.path(leaconfig$DsimMsym,'stats/LR-tvals.nrrd'))
# get rid of any infinite values
tvals[!is.finite(tvals)]=NA
# figure out our range
trange=range(0,abs(range(tvals,na.rm=T)))
# maximum intensity Z projection of t values

pdf(file=file.path(leaconfig$figdir,'DsimM_LeftEnlarged.pdf'))
rval=image.gjdens(projection(tvals,projfun=clampmax(trange)),zlim=trange,asp=1)
dev.off()

# for female
leaconfig$DsimFsym=file.path(leaconfig$rootdir,'Dsimulans/DsimFsym')

# Note LR => +ve tvals -> left-enlarged
tvals=Read3DDensityFromNrrd(file.path(leaconfig$DsimFsym,'stats/LR-tvals.nrrd'))
# get rid of any infinite values
tvals[!is.finite(tvals)]=NA
# reuse the same trange (which will be set by male left-enlarged regions)
pdf(file=file.path(leaconfig$figdir,'DsimF_LeftEnlarged.pdf'))
rval=image.gjdens(projection(tvals,projfun=clampmax(trange)),zlim=trange,asp=1)
dev.off()

# make some scale bars for the plots
pdf(file=file.path(leaconfig$figdir,'Dsim_HemisCompScaleBar.pdf'),wid=4,hei=2)
makeScaleBar(rval,lab='t values')
dev.off()

pdf(file=file.path(leaconfig$figdir,'Dsim_HemisCompScaleBarVert.pdf'),wid=2,hei=4)
makeScaleBar(rval,lab='t values',horizontal=FALSE)
dev.off()

# D virilis
#############

# for male
leaconfig$DvirMsym=file.path(leaconfig$rootdir,'Dvirilis/DvirMsym')

# Note LR => +ve tvals -> left-enlarged
tvals=Read3DDensityFromNrrd(file.path(leaconfig$DvirMsym,'stats/LR-tvals.nrrd'))
# get rid of any infinite values
tvals[!is.finite(tvals)]=NA
# figure out our range
trange=range(0,abs(range(tvals,na.rm=T)))
# maximum intensity Z projection of t values

pdf(file=file.path(leaconfig$figdir,'DvirM_LeftEnlarged.pdf'))
rval=image.gjdens(projection(tvals,projfun=clampmax(trange)),zlim=trange,asp=1)
dev.off()

# for female
leaconfig$DvirFsym=file.path(leaconfig$rootdir,'Dvirilis/DvirFsym')

# Note LR => +ve tvals -> left-enlarged
tvals=Read3DDensityFromNrrd(file.path(leaconfig$DvirFsym,'stats/LR-tvals.nrrd'))
# get rid of any infinite values
tvals[!is.finite(tvals)]=NA
# reuse the same trange (which will be set by male left-enlarged regions)
pdf(file=file.path(leaconfig$figdir,'DvirF_LeftEnlarged.pdf'))
rval=image.gjdens(projection(tvals,projfun=clampmax(trange)),zlim=trange,asp=1)
dev.off()

# make some scale bars for the plots
pdf(file=file.path(leaconfig$figdir,'Dvir_HemisCompScaleBar.pdf'),wid=4,hei=2)
makeScaleBar(rval,lab='t values')
dev.off()

pdf(file=file.path(leaconfig$figdir,'Dvir_HemisCompScaleBarVert.pdf'),wid=2,hei=4)
makeScaleBar(rval,lab='t values',horizontal=FALSE)
dev.off()

# D melanogaster
#############

# for male
leaconfig$DmelMsym=file.path(leaconfig$rootdir,'Dmelanogaster/DmelMsym')

# Note LR => +ve tvals -> left-enlarged
tvals=Read3DDensityFromNrrd(file.path(leaconfig$DmelMsym,'stats/LR-tvals.nrrd'))
# get rid of any infinite values
tvals[!is.finite(tvals)]=NA
# figure out our range
trange=range(0,abs(range(tvals,na.rm=T)))
# maximum intensity Z projection of t values

pdf(file=file.path(leaconfig$figdir,'DmelM_LeftEnlarged.pdf'))
rval=image.gjdens(projection(tvals,projfun=clampmax(trange)),zlim=trange,asp=1)
dev.off()

# for female
leaconfig$DmelFsym=file.path(leaconfig$rootdir,'Dmelanogaster/DmelFsym')

# Note LR => +ve tvals -> left-enlarged
tvals=Read3DDensityFromNrrd(file.path(leaconfig$DmelFsym,'stats/LR-tvals.nrrd'))
# get rid of any infinite values
tvals[!is.finite(tvals)]=NA
# reuse the same trange (which will be set by male left-enlarged regions)
pdf(file=file.path(leaconfig$figdir,'DmelF_LeftEnlarged.pdf'))
rval=image.gjdens(projection(tvals,projfun=clampmax(trange)),zlim=trange,asp=1)
dev.off()

# make some scale bars for the plots
pdf(file=file.path(leaconfig$figdir,'Dmel_HemisCompScaleBar.pdf'),wid=4,hei=2)
makeScaleBar(rval,lab='t values')
dev.off()

pdf(file=file.path(leaconfig$figdir,'Dmel_HemisCompScaleBarVert.pdf'),wid=2,hei=4)
makeScaleBar(rval,lab='t values',horizontal=FALSE)
dev.off()

# D yakuba
#############

# for male
leaconfig$DyakMsym=file.path(leaconfig$rootdir,'Dyakuba/DyakMsym')

# Note LR => +ve tvals -> left-enlarged
tvals=Read3DDensityFromNrrd(file.path(leaconfig$DyakMsym,'stats/LR-tvals.nrrd'))
# get rid of any infinite values
tvals[!is.finite(tvals)]=NA
# figure out our range
trange=range(0,abs(range(tvals,na.rm=T)))
# maximum intensity Z projection of t values

pdf(file=file.path(leaconfig$figdir,'DyakM_LeftEnlarged.pdf'))
rval=image.gjdens(projection(tvals,projfun=clampmax(trange)),zlim=trange,asp=1)
dev.off()

# for female
leaconfig$DyakFsym=file.path(leaconfig$rootdir,'Dyakuba/DyakFsym')

# Note LR => +ve tvals -> left-enlarged
tvals=Read3DDensityFromNrrd(file.path(leaconfig$DyakFsym,'stats/LR-tvals.nrrd'))
# get rid of any infinite values
tvals[!is.finite(tvals)]=NA
# reuse the same trange (which will be set by male left-enlarged regions)
pdf(file=file.path(leaconfig$figdir,'DyakF_LeftEnlarged.pdf'))
rval=image.gjdens(projection(tvals,projfun=clampmax(trange)),zlim=trange,asp=1)
dev.off()

# make some scale bars for the plots
pdf(file=file.path(leaconfig$figdir,'Dyak_HemisCompScaleBar.pdf'),wid=4,hei=2)
makeScaleBar(rval,lab='t values')
dev.off()

pdf(file=file.path(leaconfig$figdir,'Dyak_HemisCompScaleBarVert.pdf'),wid=2,hei=4)
makeScaleBar(rval,lab='t values',horizontal=FALSE)
dev.off()

