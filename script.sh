#!/bin/sh
echo "Script is Redy to Excute "

echo "File name only : "
read apk_name

ext_apk_name="$apk_name.apk"

echo "User Enter : $apk_name"
echo "Full File Name : $ext_apk_name"


# To Extrat APK File use command 

# apktool d whatsapp.apk -o whatsapp

apktool d -f -s $ext_apk_name -o $apk_name

mkdir "_$apk_name"

cp "./$apk_name/AndroidManifest.xml" "./_$apk_name/AndroidManifest.xml"

rm -rf "$apk_name"
