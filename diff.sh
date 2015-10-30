#!/bin/sh
# diff between current and last versions
#

cd `dirname $0`

cygwin=false
darwin=false
mingw=false
linux=false

case "`uname`" in
    CYGWIN*) cygwin=true ;;
    MINGW*) mingw=true;;
    Darwin*) darwin=true;;
    Linux*) linux=true;;
esac

if $darwin ; then
    LOCALIZATION_DIR="/Applications/Bitwig\ Studio.app/Contents/Resources/localization"
fi

if $linux ; then
    LOCALIZATION_DIR="/opt/bitwig-studio/resources/localization"
fi


diff -c target/test/resources/Bitwig\ Studio-resources.properties "${LOCALIZATION_DIR}/Bitwig Studio-resources.properties"

diff -c target/test/resources/GUIApplication-resources.properties "${LOCALIZATION_DIR}/GUIApplication-resources.properties"
