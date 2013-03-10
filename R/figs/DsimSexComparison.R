#This is for making the heatmaps for the sexComparison
##############

# D simulans
#############

# Note MF => +ve tvals -> male-enlarged
tvals=Read3DDensityFromNrrd(file.path(leaconfig$Dsim$IS1.stats,'MF-tvals.nrrd'))
# get rid of any infinite values
tvals[!is.finite(tvals)]=NA
# figure out our range
trange=range(0,abs(range(tvals,na.rm=T)))
# maximum intensity Z projection of t values

pdf(file=file.path(leaconfig$figdir,'Dsim_MaleEnlarged.pdf'))
rval=image.gjdens(projection(tvals,projfun=clampmax(trange)),zlim=trange,asp=1)
dev.off()


# nb we will reuse the same trange (which will be set by male enlarged regions)
pdf(file=file.path(leaconfig$figdir,'Dsim_FemaleEnlarged.pdf'))
rval=image.gjdens(projection(-tvals,projfun=clampmax(trange)),zlim=trange,asp=1)
dev.off()

pdf(file=file.path(leaconfig$figdir,'Dsim_SexCompScaleBar.pdf'),wid=4,hei=2)
makeScaleBar(rval,lab='t values')
dev.off()

pdf(file=file.path(leaconfig$figdir,'Dsim_SexCompScaleBarVert.pdf'),wid=2,hei=4)
makeScaleBar(rval,lab='t values',horizontal=FALSE)
dev.off()

# Dvirilis
#############

# Note MF => +ve tvals -> male-enlarged
tvals=Read3DDensityFromNrrd(file.path(leaconfig$Dvir$IS1.stats,'MF-tvals.nrrd'))
# get rid of any infinite values
tvals[!is.finite(tvals)]=NA
# figure out our range
trange=range(0,abs(range(tvals,na.rm=T)))
# maximum intensity Z projection of t values

pdf(file=file.path(leaconfig$figdir,'Dvir_MaleEnlarged.pdf'))
rval=image.gjdens(projection(tvals,projfun=clampmax(trange)),zlim=trange,asp=1)
dev.off()


# nb we will reuse the same trange (which will be set by male enlarged regions)
pdf(file=file.path(leaconfig$figdir,'Dvir_FemaleEnlarged.pdf'))
rval=image.gjdens(projection(-tvals,projfun=clampmax(trange)),zlim=trange,asp=1)
dev.off()

pdf(file=file.path(leaconfig$figdir,'Dvir_SexCompScaleBar.pdf'),wid=4,hei=2)
makeScaleBar(rval,lab='t values')
dev.off()

pdf(file=file.path(leaconfig$figdir,'Dvir_SexCompScaleBarVert.pdf'),wid=2,hei=4)
makeScaleBar(rval,lab='t values',horizontal=FALSE)
dev.off()

# Dmelanogaster
#############

# Note MF => +ve tvals -> male-enlarged
tvals=Read3DDensityFromNrrd(file.path(leaconfig$Dmel$IS1.stats,'MF-tvals.nrrd'))
# get rid of any infinite values
tvals[!is.finite(tvals)]=NA
# figure out our range
trange=range(0,abs(range(tvals,na.rm=T)))
# maximum intensity Z projection of t values

pdf(file=file.path(leaconfig$figdir,'Dmel_MaleEnlarged.pdf'))
rval=image.gjdens(projection(tvals,projfun=clampmax(trange)),zlim=trange,asp=1)
dev.off()


# nb we will reuse the same trange (which will be set by male enlarged regions)
pdf(file=file.path(leaconfig$figdir,'Dmel_FemaleEnlarged.pdf'))
rval=image.gjdens(projection(-tvals,projfun=clampmax(trange)),zlim=trange,asp=1)
dev.off()

pdf(file=file.path(leaconfig$figdir,'Dmel_SexCompScaleBar.pdf'),wid=4,hei=2)
makeScaleBar(rval,lab='t values')
dev.off()

pdf(file=file.path(leaconfig$figdir,'Dmel_SexCompScaleBarVert.pdf'),wid=2,hei=4)
makeScaleBar(rval,lab='t values',horizontal=FALSE)
dev.off()

# Dyakuba
#############

# Note MF => +ve tvals -> male-enlarged
tvals=Read3DDensityFromNrrd(file.path(leaconfig$Dyak$IS1.stats,'MF-tvals.nrrd'))
# get rid of any infinite values
tvals[!is.finite(tvals)]=NA
# figure out our range
trange=range(0,abs(range(tvals,na.rm=T)))
# maximum intensity Z projection of t values

pdf(file=file.path(leaconfig$figdir,'Dyak_MaleEnlarged.pdf'))
rval=image.gjdens(projection(tvals,projfun=clampmax(trange)),zlim=trange,asp=1)
dev.off()


# nb we will reuse the same trange (which will be set by male enlarged regions)
pdf(file=file.path(leaconfig$figdir,'Dyak_FemaleEnlarged.pdf'))
rval=image.gjdens(projection(-tvals,projfun=clampmax(trange)),zlim=trange,asp=1)
dev.off()

pdf(file=file.path(leaconfig$figdir,'Dyak_SexCompScaleBar.pdf'),wid=4,hei=2)
makeScaleBar(rval,lab='t values')
dev.off()

pdf(file=file.path(leaconfig$figdir,'Dyak_SexCompScaleBarVert.pdf'),wid=2,hei=4)
makeScaleBar(rval,lab='t values',horizontal=FALSE)
dev.off()
