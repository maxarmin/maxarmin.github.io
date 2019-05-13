echo off
::
title: Auto-Packages Script
echo Running bash...
bash -c "ls"
bash -c "rm Packages.xz"
bash -c "dpkg-scanpackages -m . >Packages && xz Packages"
echo Done!
pause