#!/bin/bash

. build/envsetup.sh
mka clean
lunch twrpgtesqltespr-eng
mka recoveryimage

echo " Recovery Should Be Built"
echo ""
read
