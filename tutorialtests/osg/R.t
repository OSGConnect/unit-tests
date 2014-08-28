prologue
--------
  $ cp -a ${TESTDIR}/tutorial-R .
  $ cd tutorial-R

Software setup
---------------
  $ source /cvmfs/oasis.opensciencegrid.org/osg/palms/setup
  $ palmsdosetup R
  $ R --version
  R version 3.0.1 (2013-05-16) -- "Good Sport"
  Copyright (C) 2013 The R Foundation for Statistical Computing
  Platform: x86_64-unknown-linux-gnu (64-bit)
  
  R is free software and comes with ABSOLUTELY NO WARRANTY.
  You are welcome to redistribute it under the terms of the
  GNU General Public License versions 2 or 3.
  For more information about these matters see
  http://www.gnu.org/licenses/.
  

example code
------------
ensure that the probable still happens :)
  $ Rscript --no-save mcpi.R
  [1] 3.* (glob)


wrapper script
--------------
ensure fail state fails
  $ ./R-wrapper.sh 
  Usage: R-wrapper.sh file.R
  [1]
ensure we can still run the code via the wrapper
  $ ./R-wrapper.sh mcpi.R
  [1] 3.* (glob)


HTCondor job
-------------
Copy some extra utilities to the unit test directory
  $ cp ${TESTDIR}/run_and_wait.sh .
run the job through condor
  $ ./run_and_wait.sh R.submit
  All jobs done.