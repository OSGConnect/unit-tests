Prologue
--------
  $ cp -a ${TESTDIR}/tutorial-root .
  $ cd tutorial-root

ROOT
----
  $ source ${TESTDIR}/tutorial-root/environment.sh | tail -13 | head -3
  * (glob)
  Setting up ROOT version * (glob)
  *Current GCC version:* (glob) 

TODO: test if root works; root -q [filename] tests command line scripts, quits

Makefile
--------
  $ make
  g++ -O2 -Wall -fPIC -pthread -m64 -I/cvmfs/atlas.cern.ch/repo/ATLASLocalRootBase/x86_64/root/5.34.18-x86_64-slc6-gcc4.7/include   -c -o inspector.o inspector.C
  g++ -O2 -m64 inspector.o -L/cvmfs/atlas.cern.ch/repo/ATLASLocalRootBase/x86_64/root/5.34.18-x86_64-slc6-gcc4.7/lib -lCore -lCint -lRIO -lNet -lHist -lGraf -lGraf3d -lGpad -lTree -lRint -lPostscript -lMatrix -lPhysics -lMathCore -lThread -pthread -lm -ldl -rdynamic  -lTreePlayer -o inspector
  inspector done

inspector
---------
  $ ./inspector ex.root
  0

wrapper.sh
----------
replace ROOT-FILE with example root file name
  $ sed 's/ROOT-FILE/ex.root/' wrapper.sh > temp.sh 
  $ rm wrapper.sh 
  $ mv temp.sh wrapper.sh

do the same for root.submit for later
  $ sed 's/ROOT-FILE/ex.root/' root.submit > temp.submit
  $ rm root.submit
  $ mv temp.submit root.submit
  
  $ chmod +x wrapper.sh

  $ ./wrapper.sh
  0

HTCondor jobs
-------------
Copy some extra utilities to the unit test directory
  $ cp ${TESTDIR}/run_and_wait.sh .

run root.submit with condor
#  $ ./run_and_wait.sh root.submit
#  All jobs done.
