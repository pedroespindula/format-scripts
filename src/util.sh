#!/bin/bash

readfile(){
  funct=$1
  file=$2
  while read line
  do
    echo $line
    $funct $line
  done < $file
}

readallfiles() {
  funct=$1
  dir=$2

  for file in $dir/*
  do
    readfile $funct $file
  done
}
