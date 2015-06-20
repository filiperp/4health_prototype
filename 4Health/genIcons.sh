#!/bin/bash
# Generate Cordova icon and splash screens
# Thanks for http://tlvince.com

#INSTAL MACPORTS AND IMAGEMAGICK
#port install imagemagick
rm -rf "./res"
devices=android,ios
#eval mkdir -p "./res/{icon,screen}/{$devices}"
eval mkdir -p "./res/{icon,screen}/{$devices}"

# Show the user some progress by outputing all commands being run.
set -x

splash_base="./www/img/base-splash.png"
icon_base="./www/img/base-icon.png"

background="#FAD306"

# Splash iOS and Android
convert="convert $splash_base -background $background -gravity center"

$convert -resize 272x272 -extent   320x480  	"./res/screen/ios/portrait-iphone.png"
$convert -resize 272x272 -extent   480x320  	"./res/screen/ios/landscape-iphone.png"

$convert -resize 548x548 -extent   640x960 		"./res/screen/ios/portrait-iphone@2x.png"
$convert -resize 548x548 -extent   960x640 		"./res/screen/ios/landscape-iphone@2x.png"

$convert -resize 666x666 -extent   768x1024 	"./res/screen/ios/portrait-ipad.png"
$convert -resize 666x666 -extent   1024x768 	"./res/screen/ios/landscape-ipad.png"

$convert -resize 1334x1334 -extent 1536x2048 	"./res/screen/ios/portrait-ipad@2x.png"
$convert -resize 1334x1334 -extent 2048x1536 	"./res/screen/ios/landscape-ipad@2x.png"


$convert -resize 548x548 -extent   640x1136 	"./res/screen/ios/portait-iphone5.png"
$convert -resize 548x548 -extent   1136x640 	"./res/screen/ios/landscape-iphone5.png"

$convert -resize 600x600 -extent   750x1334 	"./res/screen/ios/portait-iphone6.png"
$convert -resize 600x600 -extent   1334x750		"./res/screen/ios/landscape-iphone6.png"

$convert -resize 999x999 -extent   1242x2208	"./res/screen/ios/portait-iphone6p.png"
$convert -resize 999x999 -extent   2208x1242	"./res/screen/ios/landscape-iphone6p.png"



#ANDROID
$convert -resize 999x999 -extent 1920x1280 "./res/screen/android/drawable-land-xxxhdpi.png"
$convert -resize 999x999 -extent 1280x1920 "./res/screen/android/drawable-port-xxxhdpi.png"

$convert -resize 840x840 -extent 1600x960  "./res/screen/android/drawable-land-xxhdpi.png"
$convert -resize 840x840 -extent 960x1600  "./res/screen/android/drawable-port-xxhdpi.png"

$convert -resize 781x781 -extent 1280x720  "./res/screen/android/drawable-land-xhdpi.png"
$convert -resize 611x611 -extent 720x1280  "./res/screen/android/drawable-port-xhdpi.png"

$convert -resize 272x272 -extent 320x480   "./res/screen/android/drawable-port-mdpi.png"
$convert -resize 342x342 -extent 480x320   "./res/screen/android/drawable-land-mdpi.png"
  
$convert -resize 237x237 -extent 320x200   "./res/screen/android/drawable-land-ldpi.png"
$convert -resize 172x172 -extent 200x320   "./res/screen/android/drawable-port-ldpi.png"
  
$convert -resize 402x402 -extent 480x800   "./res/screen/android/drawable-port-hdpi.png"
$convert -resize 563x563 -extent 800x480   "./res/screen/android/drawable-land-hdpi.png"

# Icons iOS and Android
icons="convert $icon_base -background transparent"

$icons -resize 512x512    "./res/icon/android/playstore.png"
$icons -resize 128x128    "./res/icon/android/icon.png"
$icons -resize 192x192    "./res/icon/android/drawable-xxxhdpi.png"
$icons -resize 144x144    "./res/icon/android/drawable-xxhdpi.png"
$icons -resize 96x96      "./res/icon/android/drawable-xhdpi.png"
$icons -resize 72x72      "./res/icon/android/drawable-hdpi.png"
$icons -resize 48x48      "./res/icon/android/drawable-mdpi.png"
$icons -resize 36x36      "./res/icon/android/drawable-ldpi.png"




$icons -resize 1024x1024  "./res/icon/ios/appstore.png"
$icons -resize 29x29      "./res/icon/ios/29.png"
$icons -resize 58x58      "./res/icon/ios/29@2x.png"
$icons -resize 40x40      "./res/icon/ios/40.png"
$icons -resize 80x80      "./res/icon/ios/40@2x.png"
$icons -resize 50x50      "./res/icon/ios/50.png"
$icons -resize 100x100    "./res/icon/ios/50@2x.png"
$icons -resize 60x60      "./res/icon/ios/60.png"
$icons -resize 120x120    "./res/icon/ios/60@2x.png"
$icons -resize 57x57      "./res/icon/ios/57.png"
$icons -resize 114x114    "./res/icon/ios/57@2x.png"
$icons -resize 72x72      "./res/icon/ios/72.png"
$icons -resize 144x144    "./res/icon/ios/72@2x.png"
$icons -resize 76x76      "./res/icon/ios/76.png"
$icons -resize 152x152    "./res/icon/ios/76@2x.png"
$icons -resize 48x48      "./res/icon/ios/48.png"
$icons -resize 64x64      "./res/icon/ios/64.png"
$icons -resize 320x320    "./res/icon/ios/320.png"




# Ref: http://cordova.apache.org/docs/en/3.6.0/config_ref_images.md.html
