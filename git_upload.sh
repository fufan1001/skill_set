#!/bin/bash
git pull --rebase
git add .
git commit -m $1
git push origin master
