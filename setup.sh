#!/bin/bash

# Compile newer sources
# Place the generated JAR in place

sudo rm -rf build && rm -rf dist
sudo make
mv /usr/libexec/flowvisor/flowvisor.jar /usr/libexec/flowvisor/flowvisor_`date +"%Y_%m_%d.%H_%M"`.jar
cp -p dist/flowvisor.jar /usr/libexec/flowvisor/
