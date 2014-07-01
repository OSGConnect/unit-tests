Prologue
--------
  $ cd ~/C\:\\Jenkins\\workspace\\OSG_Connect_Swift/unit-tests
  $ cp -a ~/C\:\\Jenkins\\workspace\\OSG_Connect_Swift/unit-tests/C\:\\Jenkins\\workspace\\OSG_Connect_Swift\\tutorial-swift ./tutorial-swift
  $ cd tutorial-swift
  $ source ~/C\:\\Jenkins\\workspace\\OSG_Connect_Swift/unit-tests/tutorial-swift/setup.sh
  using Swift from * (glob)
  Swift version is * (glob)
  Adding * (glob)
  Saving* (glob) 
  

simulate.sh
-----------
  $ ./app/simulate.sh 2>log
       * (glob)
  $ head -4 log
  
  Called as:* (glob)
  Start time:* (glob)
  Running on node:* (glob)

  $ ./app/simulate.sh -n 4 -r 1000000 2>log
  * (glob)
  * (glob)
  * (glob)
  * (glob)

  $ ./app/simulate.sh -n 3 -r 1000000 -x 100 2>log
  * (glob)
  * (glob)
  * (glob)

stats.sh
--------
  $ ls ./app/f*
  ./app/f1
  ./app/f2
  ./app/f3
  ./app/f4

  $ cat ./app/f*
  25
  60
  40
  75

  $ ./app/stats.sh ./app/f*
  50
  
  Called as* (glob)
  
  Start time: * (glob)
  Running on node: * (glob)
  Running as user: * (glob)
  
  Environment:
  
  BUILD_DISPLAY_NAME=* (glob)
  BUILD_ID=* (glob)
  BUILD_NUMBER=* (glob)
  BUILD_TAG=* (glob)
  BUILD_URL=* (glob)
  CDPATH=* (glob)
  COBBLER_SERVER=* (glob)
  COLUMNS=* (glob)
  CRAMTMP=* (glob)
  CVS_RSH=ssh
  EXECUTOR_NUMBER=? (glob)
  GIT_BRANCH=* (glob)
  GIT_COMMIT=* (glob)
  GIT_PREVIOUS_COMMIT=* (glob)
  GIT_URL=https://github.com/OSGConnect/tutorial-swift
  GREP_OPTIONS=* (glob)
  G_BROKEN_FILENAMES=* (glob)
  HISTCONTROL=* (glob)
  HISTSIZE=* (glob)
  HOME=* (glob)
  HOSTNAME=* (glob)
  HUDSON_COOKIE=* (glob)
  HUDSON_HOME=* (glob)
  HUDSON_SERVER_COOKIE=* (glob)
  HUDSON_URL=http://build.ci-connect.net:8080/
  JENKINS_HOME=* (glob)
  JENKINS_SERVER_COOKIE=* (glob)
  JENKINS_URL=http://build.ci-connect.net:8080/
  JOB_NAME=OSG_Connect_Swift
  JOB_URL=http://build.ci-connect.net:8080/job/OSG_Connect_Swift/
  LANG=* (glob)
  LANGUAGE=* (glob)
  LC_ALL=* (glob)
  LD_LIBRARY_PATH=* (glob)
  LESSOPEN=* (glob)
  LOGNAME=* (glob)
  LS_COLORS=* (glob)
  MAIL=* (glob)
  NLSPATH=* (glob)
  NODE_LABELS=* (glob)
  NODE_NAME=* (glob)
  PATH=* (glob)
  PWD=* (glob)
  QTDIR=* (glob)
  QTINC=* (glob)
  QTLIB=* (glob)
  SHELL=* (glob)
  SHLVL=* (glob)
  SSH_CLIENT=* (glob)
  SSH_CONNECTION=* (glob)
  SSH_TTY=* (glob)
  STY=* (glob)
  TEMP=* (glob)
  TERM=* (glob)
  TERMCAP=* (glob)
  TESTDIR=* (glob)
  TESTFILE=swift.t
  TMP=* (glob)
  TMPDIR=* (glob)
  TZ=* (glob)
  USER=* (glob)
  WINDOW=* (glob)
  WORKSPACE=* (glob)
  XFILESEARCHPATH=* (glob)
  _=* (glob)

p1.swift
--------
  $ cp app/simulate.sh part01

  $ cd part01
  
  $ swift p1.swift
  Swift * (glob)
  
  RunID: * (glob)
  Progress:*  time:* (glob)
  Final status:*  Finished successfully:1 (glob)

  $ cat sim.out
  ??? (glob)

  $ cd ..

p2.swift
--------
  $ cp app/simulate.py part02
  $ cd part02

  $ swift p2.swift
  Swift * (glob)
  
  RunID:* (glob)
  Progress:  time:* (glob)
  Progress:  time:* Selecting site:* Stage out:* Finished successfully:1 (glob)
  Progress:  time:* Selecting site:* Submitting:* Finished successfully:3 (glob)
  Progress:  time:* Selecting site:* Submitting:* Finished successfully:5 (glob)
  Progress:  time:* Selecting site:* Submitting:* Finished successfully:7 (glob)
  Progress:  time:* Submitting:*  Finished successfully:9 (glob)
  Final status:* Finished successfully:10 (glob)

  $ ls output/
  sim_0.out
  sim_1.out
  sim_2.out
  sim_3.out
  sim_4.out
  sim_5.out
  sim_6.out
  sim_7.out
  sim_8.out
  sim_9.out

  $ cd ..

p3.swift
--------
  $ cp apps/stats.sh part03
  $ cd part03

  $ swift p3.swift
  Swift * (glob)
  
  RunID:* (glob)
  Progress:  time:* (glob)
  Progress:  time:* Active:*  Stage out:* (glob)
  Final status:* Finished successfully:11 (glob)

  $ cat output/average.out
  ??? (glob)

  $ cd ..

p4.swift
--------
#  $ cd part04

#  $ swift p4.swift | tail -1
#  Final status:* Finished successfully:* (glob)

#  $ cat output/average.out
#  ??? (glob)
 
#  $ cd ..

p5.swift
--------
#  $ cd part05
#  $ swift p5.swift | tail -1
#  Final status:* Finished successfully:* (glob)

#  $ cat output/stats.out
#  ??????? (glob)

#  $ cd ..

p6.swift
--------
#  $ cd part06
#  $ swift p6.swift | tail -1
#  Final status:* Finished successfully:* (glob)

#  $ cat output/stats.out
#  ??????? (glob)

#  $ cd ..
