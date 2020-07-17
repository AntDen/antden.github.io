#!/bin/bash
set -e

rm -rf antden.github.io
gitbook build
git clone https://github.com/AntDen/antden.github.io

rm -rf antden.github.io/*
rsync -av _book/ antden.github.io/

cp run.sh antden.github.io/
cd antden.github.io 


git add *
git commit -m u
git push

rm -rf antden.github.io
