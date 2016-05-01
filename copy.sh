#!/bin/sh

WD=`pwd`
SOURCE=~/magicaleye/dailymagiceye

rm -rf $WD/www/*.html
rm -rf $WD/www/*.js
rm -rf $WD/www/images/*
rm -rf $WD/www/css/*

cp $SOURCE/index.html $WD/www/
cp $SOURCE/build.js $WD/www/
cp $SOURCE/build.js.map $WD/www/
cp -r $SOURCE/assets/images/* $WD/www/assets/images
cp -r $SOURCE/assets/css/* $WD/www/assets/css
ls -l $WD/www/
ls -l $WD/www/assets/images
ls -l $WD/www/assets/css
