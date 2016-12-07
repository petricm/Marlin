#!/bin/bash

ILCSOFT=/cvmfs/clicdp.cern.ch/iLCSoft/builds/current/CI_llvm
source $ILCSOFT/init_ilcsoft.sh

cd /Package
mkdir build
cd build
cmake -GNinja -C $ILCSOFT/ILCSoft.cmake ..
ninja
ctest --output-on-failure

