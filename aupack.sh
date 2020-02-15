echo off
::
title: Auto-Packages Script
echo Running bash...
ls
rm Packages.bz2 Packages.xz Packages.lzma Packages.gz
dpkg-scanpackages -m . >Packages && bzip2 Packages -k && xz Packages -k && lzma Packages -k && gzip Packages
echo Done!