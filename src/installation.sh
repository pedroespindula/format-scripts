#!/bin/bash 
installapt() {
  program=$1
  sudo apt-get install -y $program
}

installppa() {
  ppa="ppa:"
  ppa+=$1
  sudo add-apt-repository $ppa
}

installsnap() {
  program=$1
  snap install --classic $program
}

installnpm() {
  program=$1
  npm install -g $program
}

declare -A installapps=(
  ["apt"]=installapt
  # ["ppa"]=installppa
  # ["snap"]=installsnap
  # ["npm"]=installnpm
)

