#!/bin/bash

current_dir=$PWD
cd go
./build.sh 
cd $current_dir

dart run ffigen
