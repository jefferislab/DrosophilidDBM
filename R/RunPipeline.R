source("LeaStartup.R", chdir = TRUE)
setwd(file.path(leaconfig$rootdir,"R"))

# for sex-comparison using asymmetric template
source("DownsampledTemplates.R", chdir = TRUE)
source("JacobiansSexComparison.R", chdir = TRUE)
source("TtestsSexComparison.R", chdir = TRUE)

# for hemisphere-comparison using symmetric template
source("DownsampledTemplatesSym.R", chdir = TRUE)
source("JacobiansHemisphereComparison.R", chdir = TRUE)
source("TtestsHemisphereComparison.R", chdir = TRUE)


