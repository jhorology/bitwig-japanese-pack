#!/bin/sh
# diff between current and last versions
#

cd `dirname $0`

diff -c target/test/resources/Bitwig\ Studio-resources.properties /Applications/Bitwig\ Studio.app/Contents/Resources/localization/Bitwig\ Studio-resources.properties

diff -c target/test/resources/GUIApplication-resources.properties /Applications/Bitwig\ Studio.app/Contents/Resources/localization/GUIApplication-resources.properties
