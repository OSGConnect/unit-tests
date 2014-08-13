Prologue
--------
  $ cp -a ${TESTDIR}/tutorial-htcondor_transfer .
  $ cd tutorial-htcondor_transfer

example code
------------

  $ cat random_words | ./distribution
  Val        |Ct (Pct)   Histogram
  Ashkenazim |45 (0.44%) +++++++++++++++++++++++++++++++++++++++++++++++++++++++++
  BIOS       |45 (0.44%) +++++++++++++++++++++++++++++++++++++++++++++++++++++++++
  Anaheim    |44 (0.43%) +++++++++++++++++++++++++++++++++++++++++++++++++++++++
  Aymara     |44 (0.43%) +++++++++++++++++++++++++++++++++++++++++++++++++++++++
  Arthurian  |43 (0.42%) ++++++++++++++++++++++++++++++++++++++++++++++++++++++
  Anaxagoras |43 (0.42%) ++++++++++++++++++++++++++++++++++++++++++++++++++++++
  Bactria    |43 (0.42%) ++++++++++++++++++++++++++++++++++++++++++++++++++++++
  Alexis     |43 (0.42%) ++++++++++++++++++++++++++++++++++++++++++++++++++++++
  Ariel      |43 (0.42%) ++++++++++++++++++++++++++++++++++++++++++++++++++++++
  Aubrey     |42 (0.41%) +++++++++++++++++++++++++++++++++++++++++++++++++++++
  Baryshnikov|42 (0.41%) +++++++++++++++++++++++++++++++++++++++++++++++++++++
  Bahia      |42 (0.41%) +++++++++++++++++++++++++++++++++++++++++++++++++++++
  Angstrom   |42 (0.41%) +++++++++++++++++++++++++++++++++++++++++++++++++++++
  Asoka      |42 (0.41%) +++++++++++++++++++++++++++++++++++++++++++++++++++++
  Alcatraz   |41 (0.40%) ++++++++++++++++++++++++++++++++++++++++++++++++++++

Add Requirement line
--------------------
  $ sed -i "11s/$/Requirements = IS_RCC_syracuse =?= True/" transfer.submit

HTCondor job
------------
Copy some extra utilities to the unit test directory
  $ cp ${TESTDIR}/run_and_wait.sh .

run transfer.submit through condor
  $ ./run_and_wait.sh transfer.submit
  All jobs done.
