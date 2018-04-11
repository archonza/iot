#!/bin/bash
# This script ensures environment variable is set before executing make for application helloworld.
if [[ -z "${FIRMWARE_MAIN}" ]]; then
   echo "Please configure FIRMWARE_MAIN environment variable!"
else
   cd $FIRMWARE_MAIN
   make PLATFORM=photon APP=helloworld
fi