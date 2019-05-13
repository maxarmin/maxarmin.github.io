echo off
::
title: Auto-Packages Script
echo Running bash...
bash -c "ls"
bash -c "rm Packages.gz"
bash -c "dpkg-scanpackages -m . >Packages && gzip Packages"
echo Done!
pause