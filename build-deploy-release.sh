#!/bin/sh

# build plugin
mvn clean install

#build mirror
cd mirrors
mvn clean install
cd ..


# upload repo
sh ./repo/upload-release.sh


# upload release zip
sh ./repo/upload-release-zip.sh
