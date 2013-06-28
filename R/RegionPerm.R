# NB Pipeline must be run first to set up variables
# source("RunPipeline.R", chdir = TRUE)
# source("NeuropilVolumes.R first, chdir = TRUE")

# Dvirilis
###########

# pipeline and NeuropilVolumes.R should be run then this should be set up.

npstats=list()
npstats$DvirDmel=list()
sorted_region_names=sort(names(jfrcmaterials)[-1])

# make skeleton data frame to hold fractional volumes
fractional_volumes=expand.grid(species=c("Dmel",'Dsim','Dvir','Dyak'),region=sorted_region_names)
fractional_volumes$fvol=NA
rownames(fractional_volumes)=paste(fractional_volumes$species,sep="-",fractional_volumes$region)
for(np_region in sorted_region_names){
	for(species in c("Dvir","Dsim","Dmel")){
		statstables=if(species=="Dmel") npvols$Dmel$IS1 else npvols[[species]]$DmelIS1
		fvol=mean(sapply(statstables,function(df) df[np_region,'sum']/sum(df[-1,'sum'])))
		fractional_volumes[paste(species,sep="-",np_region),'fvol']=fvol
	}
}

# now calculate stats vs Dmel
for(np_region in sorted_region_names){
	Dvir=sapply(npvols$Dvir$DmelIS1,function(df) df[np_region,'sum']/sum(df[-1,'sum']))
	Dmel=sapply(npvols$Dmel$IS1,function(df) df[np_region,'sum']/sum(df[-1,'sum']))
	npstats$DvirDmel[[np_region]]=oneway.permtest(Dvir,Dmel)
}

abs_volumes=expand.grid(species=c("Dmel",'Dsim','Dvir'),region=sorted_region_names)
abs_volumes$vol=NA
rownames(abs_volumes)=paste(abs_volumes$species,sep="-",abs_volumes$region)
for(np_region in sorted_region_names){
	for(species in c("Dvir","Dsim","Dmel")){
		statstables=if(species=="Dmel") npvols$Dmel$IS1 else npvols[[species]]$DmelIS1
		vol=mean(sapply(statstables,function(df) df[np_region,'sum']*8))
		abs_volumes[paste(species,sep="-",np_region),'vol']=vol
	}
}

# Dsimulans
###########
 
# we don't have to calculate the relative and absolute volumes again
# since we already did that above in the Dvir script 
npstats$DsimDmel=list()
# now calculate stats vs Dmel
for(np_region in sorted_region_names){
	Dsim=sapply(npvols$Dsim$DmelIS1,function(df) df[np_region,'sum']/sum(df[-1,'sum']))
	Dmel=sapply(npvols$Dmel$IS1,function(df) df[np_region,'sum']/sum(df[-1,'sum']))
	npstats$DsimDmel[[np_region]]=oneway.permtest(Dsim,Dmel)
}

# Dyakuba
###########
 
# we don't have to calculate the relative and absolute volumes again
# since we already did that above in the Dvir script 
npstats$DyakDmel=list()
# now calculate stats vs Dmel
for(np_region in sorted_region_names){
	Dyak=sapply(npvols$Dyak$DmelIS1,function(df) df[np_region,'sum']/sum(df[-1,'sum']))
	Dmel=sapply(npvols$Dmel$IS1,function(df) df[np_region,'sum']/sum(df[-1,'sum']))
	npstats$DyakDmel[[np_region]]=oneway.permtest(Dyak,Dmel)
}


