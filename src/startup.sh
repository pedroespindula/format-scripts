#!/bin/bash

source "./util.sh" --source-only
source "./installation.sh" --source-only

datapath="../data/"

for app in "${!installapps[@]}"
do
  funct=${installapps[$app]}
  fulldir="$datapath$app"
  readallfiles $funct $fulldir
done

scriptpath="${datapath}scripts"
for script in $scriptpath/*
do
  source $script
done
