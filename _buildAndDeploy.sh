#!/bin/bash

rm -rf ~/REPO/cronify/build
cd ~/REPO/cronify
npm run build
cd ~/REPO/downbot/
git rm -r apps/cronify/*
mkdir apps
cp -r ~/REPO/cronify/build ~/REPO/downbot/apps/cronify
git add apps/cronify
git status
git commit -m "$(date)"
git push


