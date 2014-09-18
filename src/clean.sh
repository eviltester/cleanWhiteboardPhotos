#!/bin/bash
# using two snippets of code from online, take a single image, then clean it and trim it
# usage: sh clean.sh nameOfFile.jpg
# output: cleaned_nameOfFile.jpg and trimmed_nameOfFile.jpg
# slightly amended from https://gist.github.com/lelandbatey/8677901
convert "$1" -morphology Convolve DoG:15,100,0 -negate -normalize -blur 0x1 -channel RBG -level 60%,91%,0.1 "cleaned_$1"
# try and trim the white space using code from
# http://superuser.com/questions/654557/how-to-auto-trim-scanned-images-using-imagemagick-or-graphicsmagick
convert "cleaned_$1" -fuzz 80% -trim +repage "trimmed_$1"