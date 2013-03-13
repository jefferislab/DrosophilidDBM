source(file.path(leaconfig$srcdir,"TtestsSexComparisonSetup.R"))

# Dsimulans
###########

CMTKTtest(leaconfig$Dsim$IS1.jacfiles[leaconfig$Dsim$IS1.jacfiles.sex=='M'],
	leaconfig$Dsim$IS1.jacfiles[leaconfig$Dsim$IS1.jacfiles.sex=='F'],
	out.stem=file.path(leaconfig$Dsim$IS1.stats,'MF'),
	mask=leaconfig$Dsim$IS1.2um.mask
)

# Dvirilis
###########

CMTKTtest(leaconfig$Dvir$IS1.jacfiles[leaconfig$Dvir$IS1.jacfiles.sex=='M'],
	leaconfig$Dvir$IS1.jacfiles[leaconfig$Dvir$IS1.jacfiles.sex=='F'],
	out.stem=file.path(leaconfig$Dvir$IS1.stats,'MF'),
	mask=leaconfig$Dvir$IS1.2um.mask
)

# Dmelanogaster
###########

CMTKTtest(leaconfig$Dmel$IS1.jacfiles[leaconfig$Dmel$IS1.jacfiles.sex=='M'],
	leaconfig$Dmel$IS1.jacfiles[leaconfig$Dmel$IS1.jacfiles.sex=='F'],
	out.stem=file.path(leaconfig$Dmel$IS1.stats,'MF'),
	mask=leaconfig$Dmel$IS1.2um.mask
)

# Dyakuba
###########

CMTKTtest(leaconfig$Dyak$IS1.jacfiles[leaconfig$Dyak$IS1.jacfiles.sex=='M'],
	leaconfig$Dyak$IS1.jacfiles[leaconfig$Dyak$IS1.jacfiles.sex=='F'],
	out.stem=file.path(leaconfig$Dyak$IS1.stats,'MF'),
	mask=leaconfig$Dyak$IS1.2um.mask
)

