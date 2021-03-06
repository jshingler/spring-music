#!/bin/sh

set -e # fail fast
set -x # print commands

export TERM=${TERM:-dumb}

echo "Build and Publish to Maven Repo"
pwd
cd source-code
pwd
./gradlew assemble 
#publish

echo "Move artifacts to output area"
ls -R
cp build/libs/spring-music.war ../build

echo "Build and Publish -- Done"