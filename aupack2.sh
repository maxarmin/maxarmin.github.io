echo off
::
title: Auto-Packages Script
echo Running bash...
ls
rm Packages.bz2
dpkg-scanpackages -m . >Packages && bzip2 Packages -k
echo Done!