#!/bin/bash

M2_HOME=/Volumes/Development/opt/apache-maven-3.1.1

PACKAGE=changeme-service-1.0-SNAPSHOT
LAUNCHER=./server.bsh
getpid() {
    pid=`pgrep -f "$PACKAGE"`
}

SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ]; do
    DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"
    SOURCE="$(readlink "$SOURCE")"
    [[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE"
done
DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"
export DIR

if [[ -n "$M2_HOME" ]] && [[ -x "$M2_HOME/bin/mvn" ]];  then
    echo Found maven executable in M2_HOME
    MVN_CMD="$M2_HOME/bin/mvn"
elif type -p mvn; then
    echo Found maven executable in PATH
    MVN_CMD=mvn
else
    echo "Cannot find maven executable. Please set M2_HOME or put mvn in your PATH."
    exit 1
fi

cd "$DIR"
echo -n "Change to dir: "
pwd

getpid
if [ -n "$pid" ]; then
    $LAUNCHER stop
fi
$MVN_CMD --version
$MVN_CMD -f pom.xml clean package
if [ -n "$pid" ]; then
    $LAUNCHER start
fi

exit 0
