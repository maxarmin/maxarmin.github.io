echo off
::
title: Auto-Packages Script
echo Running bash...
bash -c "ls"
bash -c "rm Packages.bz2 Packages.xz Packages.lzma Packages.gz "
bash -c "dpkg-scanpackages -m . >Packages && bzip2 Packages -k && xz Packages -k && lzma Packages -k && gzip Packages"
echo Done!