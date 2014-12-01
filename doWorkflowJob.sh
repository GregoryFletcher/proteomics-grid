#!/bin/bash                                                                                                                                                                       
set -e #stop on error                                                                                                                                                              
set -x #print debug info
wget http://pprc.qmul.ac.uk/~fletcher/ryanSA.tar.gz
tar -zxvf ryanSA.tar.gz
pwd
hostname
export ROOTSYS=${PWD}/ryanSA/root
export LD_LIBRARY_PATH=${PWD}/ryanSA/lib:${PWD}/ryanSA/root/lib
export OPENMS_DATA_PATH=${PWD}/ryanSA/share/OpenMS
ls -lah /mnt/lustre_0/data/fletcher/DM6.mzml
mkdir output_FFR_grid
./ryanSA/bin/ExecutePipeline -in ryanSA/FFR.toppas -out_dir output_FFR_grid
tar -zcvf FFR.tar.gz output_FFR_grid
lcg-cp FFR.tar.gz srm://se03.esc.qmul.ac.uk/vo.londongrid.ac.uk/FFR.tar.gz
