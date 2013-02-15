context("Testing name functions")

test_that("brain_from_path returns a brain for some test paths", {
	path="/Volumes/teraraid/flybrain/Aaron/SkeletonRegistrationFolder/DsimDBM/jacs/DsimIS1_AAGS2-1-AAGS2-2-stitched_01_warp_m0g80c8e1e-1x26r4_jac.nrrd"
	brain="AAGS2"
	expect_that(brain_from_path(path),equals(brain))
	
	reg="/Volumes/teraraid/flybrain/Aaron/SkeletonRegistrationFolder/DsimDBM/Registration/warp/DsimIS1_AAGS2-1-AAGS2-2-stitched_01_warp_m0g80c8e1e-1x26r4.list"
	expect_that(brain_from_path(reg),equals('AAGS2'))

	
	expect_that(brain_from_path(c(path,reg)),equals(c('AAGS2','AAGS2')),
	'check that we can operate on multiple paths at once')
	
	image="AAGT2-1-AAGT2-2-stitched_01.nrrd"
	expect_that(brain_from_path(image),equals("AAGT2"),
	'check that we can cope with image (without template prefix)')
})

test_that("slide_from_brain returns slide",{
	brain='AAGV20'
	expect_that(slide_from_brain(brain),equals("AAGV"))
})