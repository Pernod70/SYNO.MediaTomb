#!/bin/sh

chown -R root:root desktop etc mediatomb ui
chmod -R 755 *
tar -czf package.tgz -X exclude.txt desktop etc mediatomb ui

chown -R root:root scripts CHANGELOG INFO package.tgz PACKAGE_ICON.PNG PACKAGE_ICON_120.PNG
chmod -R 755 *
tar -cvf ../MediaTomb-0.11.0-002.spk -X exclude.txt scripts CHANGELOG INFO package.tgz PACKAGE_ICON.PNG PACKAGE_ICON_120.PNG

exit 0