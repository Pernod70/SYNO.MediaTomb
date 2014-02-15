#!/bin/sh

chown -R root:root desktop etc mediatomb ui
chmod -R 755 *
tar -czf package.tgz -X exclude.txt desktop etc mediatomb ui

chown -R root:root scripts CHANGELOG INFO package.tgz PACKAGE_ICON.PNG
chmod -R 755 *
tar -cvf ../MediaTomb-0.11.0-001.spk -X exclude.txt scripts CHANGELOG INFO package.tgz PACKAGE_ICON.PNG

exit 0