#!/bin/bash

cd `dirname $0`
OUT=./Uploads/XTextureExtractor-NEW.zip
rm -f $OUT
set -xv
rsync -av --exclude="*.class" --exclude=".gitignore" ./java-client/ Plugin-XTextureExtractor-x64-Release/java-client/
zip -r $OUT Plugin-XTextureExtractor-x64-Release/
