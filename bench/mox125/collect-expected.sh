#!/bin/sh

DIR=`pwd`
echo ";;; Generated by collect-expected.sh @ `date`"
echo "(defparameter *expected-results* '(" 
grep "^#" asm/*.S | sed -e "s/S:# /x\" . \"/g" | sed -e "s/^asm\//(\"/g" | sed -e "s/$/\")/g"
echo "))"
