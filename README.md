Clean Whiteboard Photos
=======================

Scripts using imagemagick to clean photos of whiteboards or just notes on bits of paper.

I make no claims to originality for this.

I was looking for an easy way to clean photos I was taking of whiteboards and notepads.

I tried a few online services but they were a little flakey.

I found a code snippet on line to do the clean up. It was in a gist.

https://gist.github.com/lelandbatey/8677901

I amended it slightly in the script so I only type in the source file name and the output filename is added automatically.

I then wanted to trim the photo a little and remove some of the white space border.

A quick web search later I found this code:

http://superuser.com/questions/654557/how-to-auto-trim-scanned-images-using-imagemagick-or-graphicsmagick

All I did was use the same shell script parameter from the first line so now when I run

```
sh clean.sh nameOfFile.jpg
```

The script will output:

* cleaned_nameOfFile.jpg and 
* trimmed_nameOfFile.jpg

The `clean.sh` file is stored in the `src` directory.

## What's it for again?

I typically make a lot of scribble diagrams on bits of paper or whiteboard. 

And often want to just paste them straight into documents I'm writing.

I find this faster than drawing it up in a graphics package.

But I end up having to tweak the photo in an image editor and cropping it, and all of that takes time which I don't want to spend. After all, I scribbled the diagram on a bit of paper to try and add value fast.

So, with this script I:

* scribble the diagram on a bit of paper
* take a photo of it with my phone
* using the phone, send it to evernote
* sync it to my laptop or desktop
* save the image from evernote to the disk
* `sh clean.sh imageFromEvernote.jpg`
* add `trimmed_imageFromEvernote.jpg` into the document

That might seem a bit of a faff, but its faster, better and easier than I was doing before.

## Prerequisites

You need to have ImageMagick installed:

* http://www.imagemagick.org/

## Todo

* write the windows .bat version
* figure out why the bottom of the picture doesn't crop the whitespace



