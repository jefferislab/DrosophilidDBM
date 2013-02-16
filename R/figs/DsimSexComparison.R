
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
