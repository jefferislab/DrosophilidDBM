source("LeaStartup.R", chdir = TRUE)
setwd(file.path(leaconfig$rootdir,"R"))

# for sex-comparison using asymmetric template
try(source("DownsampledTemplates.R", chdir = TRUE))
try(source("JacobiansSexComparison.R", chdir = TRUE))
try(source("TtestsSexComparison.R", chdir = TRUE))

try(source("NeuropilVolumes.R", chdir = TRUE))
try(source("RegionPerm.R", chdir = TRUE))

# for hemisphere-comparison using symmetric template
# source("DownsampledTemplatesSym.R", chdir = TRUE)
# source("JacobiansHemisphereComparison.R", chdir = TRUE)
# source("TtestsHemisphereComparison.R", chdir = TRUE)
