#!/bin/sh

# if you want to launch this script from a different directory (for example
# from an another init script or similar, set the LAUNCHDIR variable below
# to the absolute path of the mediatomb.sh script

LAUNCHDIR=`pwd`
export MEDIATOMB_DATADIR="$LAUNCHDIR/usr/share/mediatomb"
export MEDIATOMB_MAGIC_FILE="usr/share/file/magic"
$LAUNCHDIR/usr/bin/mediatomb -m $LAUNCHDIR -f config

