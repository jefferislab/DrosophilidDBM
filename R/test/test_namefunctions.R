context("Testing name functions")

test_that("brain_from_path returns a brain for some test paths", {
	path="/Volumes/teraraid/flybrain/Aaron/SkeletonRegistrationFolder/DsimDBM/jacs/DsimIS1_AAGS2-1-AAGS2-2-stitched_01_warp_m0g80c8e1e-1x26r4_jac.nrrd"
	brain="AAGS2"
	expect_that(brain_from_path(path),equals(brain))
	
	reg="/Volumes/teraraid/flybrain/Aaron/SkeletonRegistrationFolder/DsimDBM/Registration/warp/DsimIS1_AAGS22-1-AAGS22-2-stitched_01_warp_m0g80c8e1e-1x26r4.list"
	expect_that(brain_from_path(reg),equals('AAGS22'),
	"check that it can deal with two numbers in the imagename -> neede for the Dvir where some are AAGH22 etc")
	
	reg="/Volumes/teraraid/flybrain/Aaron/SkeletonRegistrationFolder/DsimDBM/Registration/warp/DsimIS1_AAGS2-1-AAGS2-2-stitched_01_warp_m0g80c8e1e-1x26r4.list"
	expect_that(brain_from_path(reg),equals('AAGS2'))
	
	reg='DmelIS1_AABG1stitched_01_warp_m0g80c8e1e-1x26r4.list'
	expect_that(brain_from_path(reg),equals('AABG1'),
	'check that we can cope with warp registration where image name does not have a dash')
	
	reg="/Volumes/teraraid/flybrain/Aaron/SkeletonRegistrationFolder/DsimDBM/Registration/warp/DsimIS1_AAGS2-1-AAGS2-2-stitched_01_warp_m0g80c8e1e-1x26r4.list"
	expect_that(brain_from_path(c(path,reg)),equals(c('AAGS2','AAGS2')),
	'check that we can operate on multiple paths at once')
	
	reg="Dmelf-1_AABG1stitched_01_9dof.list"
	expect_that(brain_from_path(reg),equals("AABG1"),
	'check that we can cope with a template brain name that includes a dash')

	reg="DmelIS1_AABG1stitched_01_9dof.list"
	expect_that(brain_from_path(reg),equals("AABG1"),
	'check that we can cope with reg name that does not include terminal dash')

	image="AABG1stitched_01.PIC"
	expect_that(brain_from_path(image),equals("AABG1"),
	'check that we can cope with image name that does not include terminal dash')

	image="AAGT2-1-AAGT2-2-stitched_01.nrrd"
	expect_that(brain_from_path(image),equals("AAGT2"),
	'check that we can cope with image (without template prefix)')
})

test_that("slide_from_brain returns slide",{
	brain='AAGV20'
	expect_that(slide_from_brain(brain),equals("AAGV"))
})