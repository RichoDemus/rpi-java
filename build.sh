#!/bin/bash

JAVA_VERSION="8u71"

#from http://stackoverflow.com/a/246128
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

FILENAME="jdk-${JAVA_VERSION}-linux-arm32-vfp-hflt.tar.gz"
DOWNLOAD_COMMAND="wget -P ${DIR}/jdk/ --no-check-certificate --no-cookies --header \"Cookie: oraclelicense=accept-securebackup-cookie\" http://download.oracle.com/otn-pub/java/jdk/8u71-b15/${FILENAME}"

if [ ! -f ${DIR}/jdk/${FILENAME} ]; then
	echo "File not found!"
	eval ${DOWNLOAD_COMMAND}
fi

docker build -t rpi-java8:${JAVA_VERSION} .

