#!/usr/bin/env bash

BUILD="./build/j2objc"

rm -rf $BUILD

mkdir -p $BUILD/{java,objc,bin}


find "./src/main" -name '*.java' -type f -exec cp {} "$BUILD/java/" \;
find "./src/main" -type f -name 'packages.properties' -exec cat {} + >> "$BUILD/java/packages.properties" ;


CLASS_PATH="./src/main/java:"

for f in $BUILD/java/*.java; do

  FILE_NAME=`basename $f`
	NAME=${FILE_NAME//".java"/""}
	FILE_M="${NAME}.m"

	echo "** j2objc compile $FILE_NAME"

	j2objc -d $BUILD/objc \
    -sourcepath "$BUILD/java/**.java" \
    -classpath $CLASS_PATH \
    -use-arc --prefixes $BUILD/java/packages.properties \
    --swift-friendly \
    --no-package-directories $f
		#--verbose \

done


## prepare and copy ios sources to pod project

APP_IOS_SOURCES=../ios/J2ObjCUnit/Classes
rm -R $APP_IOS_SOURCES/*
cp ../ios/src/* $APP_IOS_SOURCES/
cp $BUILD/objc/* $APP_IOS_SOURCES/
