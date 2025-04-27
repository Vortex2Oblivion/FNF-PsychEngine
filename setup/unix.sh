#!/bin/sh
# SETUP FOR MAC AND LINUX SYSTEMS!!!
# REMINDER THAT YOU NEED HAXE INSTALLED PRIOR TO USING THIS
# https://haxe.org/download
cd ..
echo Makking the main haxelib and setuping folder in same time..
mkdir ~/haxelib && haxelib setup ~/haxelib
echo Installing dependencies...
echo This might take a few moments depending on your internet speed.
haxelib git lime https://github.com/swordcubes-grave-of-shite/lime
haxelib git openfl https://github.com/swordcubes-grave-of-shite/openfl --skip-dependencies
haxelib git flixel https://github.com/swordcubes-grave-of-shite/flixel --skip-dependencies
haxelib git flixel-addons https://github.com/swordcubes-grave-of-shite/flixel-addons --skip-dependencies
haxelib install flixel-tools 1.5.1
haxelib install hscript-iris 1.1.3
haxelib install tjson
haxelib install hxdiscord_rpc
haxelib install format
haxelib install hxp
haxelib git hxvlc https://github.com/vortex2oblivion/hxvlc --skip-dependencies
haxelib git flxanimate https://github.com/Dot-Stuff/flxanimate 768740a56b26aa0c072720e0d1236b94afe68e3e
haxelib git linc_luajit https://github.com/superpowers04/linc_luajit 1906c4a96f6bb6df66562b3f24c62f4c5bba14a7
haxelib git funkin.vis https://github.com/FunkinCrew/funkVis 22b1ce089dd924f15cdc4632397ef3504d464e90
haxelib git grig.audio https://gitlab.com/haxe-grig/grig.audio.git cbf91e2180fd2e374924fe74844086aab7891666
echo Rebuilding Lime
haxelib run lime rebuild cpp
echo Finished!
