#!/bin/sh

# android
WD=`pwd`
SOURCE=~/magicaleye/dailymagiceye

ionic build --release android
cd platforms/android/build/outputs/apk
jarsigner -verbose -sigalg SHA1withRSA -digestalg SHA1 -keystore my-release-key.keystore android-release-unsigned.apk alias_name
rm DailyMagicEye.apk
~/Android/Sdk/build-tools/23.0.2/zipalign -v 4 android-release-unsigned.apk DailyMagicEye.apk
ls -l
# scp DailyMagicEye.apk vagrant@192.168.33.10:~
cp DailyMagicEye.apk $WD/DailyMagicEye.apk
ls -l DailyMagicEye.apk
cd $WD

