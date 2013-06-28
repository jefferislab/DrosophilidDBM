This repository will collect some scripts to carry out DBM across a variety of
Drosophilid species

* D. melanogaster
* D. simulans
* D. virilis
* D. yakuba

Installation
============
    cd ~/projects
    git clone (see top of page for full command)


ORGANISATION

folders named after Drosophilids, e.g. Dsimulans contain each:
- DsimDBM: contains everything needed for registration to the IS reference brain (commands, images, jobs folder) and the results of that registration (refbrain, Registration, reformatted), the DBM results (jacs) and the analysis (stats). in addition DmelIS1jacs which is DBM of Dsim-to-Dmel bridged brains
- DsimIS: contains everything needed for generating the "intersex" reference brain, the registrations+averages and the resulting IS brain itself
- DsimFemale: requirements for making an average female brain (jobs, images, commands) and the result of that registration+averaging procedure (refbrain, Registration, average, reformatted). same for DsimMale
- DsimFsym for creating symmetric refbrain: female brain + its flip for generating a symmetric female brain to do hemisphere comparisons. same registration and resulting folders as for any of the asymmetric registrations. same for DsimMsym for creating symmetric refbrain
- DsimFsym: DBM for hemisphere comparison (folders for registration; registration results; DBM; analysis folders). same for DsimMsym. 
- note: for yakuba, the images are in images_yakuba

FBIS1_Bridging folder: contains everything related to bridging sim, vir and yak to mel

report: contains some images used in the PartII-project-write-up

figout: contains the figures displaying t-maps of male/female enlarged regions + their appropriate scale bars. species-specific sex-comparisons are intensity projections (e.g. "Dmel_MaleEnlarged.pdf" where "Tadj" means that the t value signalling significance has been adjusted after a permutation test); across-species region-comparisons based on the Janelia-region-template are "RegionSlice"s; Hemisphere comparisons are "HemisComp". 

data: contains the files for the permutation test 

commands: contains the command to run the permutation. commands for registration etc are in the Drosophilid folders.

db: contains text files with the lists of brain names and their sex

R: contains everything for the analysis


