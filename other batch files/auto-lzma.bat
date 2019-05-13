echo off
::
title: Auto-Packages Script
echo Running bash...
bash -c "ls"
bash -c "rm Packages.lzma"
bash -c "dpkg-scanpackages -m . >Packages && lzma Packages"
echo Done!
pause