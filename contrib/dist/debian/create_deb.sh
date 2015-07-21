#!/bin/sh

echo "Creating Debian's package..."
nano ./liquidprompt/DEBIAN/control

echo "Copying files..."
cp ../../profile.d.sh ./liquidprompt/etc/profile.d/liquidprompt.sh
cp ../../liquidprompt ./liquidprompt/etc/liquidprompt
cp ../../liquidpromptrc-dist ./liquidprompt/etc/liquidpromptrc

echo "Building liquidprompt.deb..."
dpkg-deb -b liquidprompt

echo "Deleting files..."
rm -f ./liquidprompt/etc/liquidprompt
rm -f ./liquidprompt/etc/profile.d/liquidprompt.sh

echo "Done !"
