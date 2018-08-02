echo off
::
title: Auto-Packages Script
echo Running bash...
bash -c "ls"
bash -c "rm Packages.bz2"
bash -c "dpkg-scanpackages -m . >Packages && bzip2 Packages"
echo Done!