#!/bin/bash

make clean
. build/envsetup.sh
lunch omni_gtesqltespr-eng
mka recoveryimage

echo " Recovery Should Be Built"
echo ""
read
