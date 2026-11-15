#!/bin/bash
set -e
KEY=913E4F387A8F081E227AAA4B35651F110455288D
dpkg-scanpackages --multiversion . > Packages
gzip -k -f Packages
apt-ftparchive release . > Release
gpg --default-key $KEY -abs -o - Release > Release.gpg
gpg --default-key $KEY --clearsign -o - Release > InRelease
gpg --armor --export $KEY > KEY.gpg
