#!/usr/bin/env bash

# run permutation tests for t values for sex comparisons

# add Greg's special programs on hex to the path (e.g. CMTK/unu)
export PATH="$HOME/bin:/lmb/home/jefferis/local/bin:$PATH"

CURDIR=`dirname $0`
SCRIPTDIR=`dirname $CURDIR`/R
# change directory to current script dir (RunPipeline.R likes this)
cd $SCRIPTDIR

# concatente the two scripts and pipe them to R
cat RunPipeline.R TtestsSexComparisonPermTest.R | R --no-save --interactive 
