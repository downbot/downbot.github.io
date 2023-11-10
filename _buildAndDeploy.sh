#!/bin/bash

rm -rf ~/REPO/cronify/build
cd ~/REPO/cronify
npm run build
cd ~/REPO/downbot/
git rm -r cronify/*
mkdir apps
cp -r ~/REPO/cronify/build ~/REPO/downbot/cronify
git add cronify
git status
git commit -m "cronify-$(date)"
git push


