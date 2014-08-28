Prologue
--------
  $ cp -a ${TESTDIR}/../../tutorial-root .
  $ cd tutorial-root

ROOT
----
  $ source ${TESTDIR}/../../tutorial-root/environment.sh > env.txt 2>&1 && make
  g++ -O2 -Wall -fPIC -pthread -m64 -I/cvmfs/atlas.cern.ch/repo/ATLASLocalRootBase/x86_64/root/5.34.19-x86_64-slc6-gcc4.7/include   -c -o inspector.o inspector.C
  g++ -O2 -m64 inspector.o -L/cvmfs/atlas.cern.ch/repo/ATLASLocalRootBase/x86_64/root/5.34.19-x86_64-slc6-gcc4.7/lib -lCore -lCint -lRIO -lNet -lHist -lGraf -lGraf3d -lGpad -lTree -lRint -lPostscript -lMatrix -lPhysics -lMathCore -lThread -pthread -lm -ldl -rdynamic  -lTreePlayer -o inspector
  inspector done

inspector
---------
  $ wget -q --no-check-certificate http://stash.osgconnect.net/+jenkins/ex1.root
  $ ./inspector ex1.root | head -10
  Warning in <TClass::TClass>: no dictionary for class pair<string,string> is available
  2
  CollectionTree:6290:132131:6
  EventNumber\t17671 (esc)
  RunNumber\t248 (esc)
  StreamAOD_ref\t9131 (esc)
  StreamESD_ref\t50859 (esc)
  StreamRDO_ref\t9131 (esc)
  Token\t45091 (esc)
  physics:6290:714067858:8543
  EF_2b35_loose_3j35_a4tchad_4L1J15\t3498 (esc)
  
   *** Break *** write on a pipe with no one to read it
wrapper.sh
----------
replace ROOT-FILE with example root file name
  $ sed 's/ROOT-FILE/ex1.root/' wrapper.sh > temp.sh 
  $ rm wrapper.sh 
  $ mv temp.sh wrapper.sh

comment out requirements
  $ sed 's/requirements/# requirements/' root.submit > temp.submit
  $ rm root.submit
  $ mv temp.submit root.submit

HTCondor jobs
-------------
Copy some extra utilities to the unit test directory
  $ cp ${TESTDIR}/../../run_and_wait.sh .

run root.submit with condor
  $ ./run_and_wait.sh root.submit
  All jobs done.

