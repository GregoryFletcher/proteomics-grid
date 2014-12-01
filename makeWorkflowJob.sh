#!/bin/bash
set -e #stop on error
set -x #print debug info
tar -zcvf ryanSA.tar.gz /data/fletcher/OpenMS-1.11.1/ryanSA/
cp -r ryanSA.tar.gz /users/fletcher/public_html/
