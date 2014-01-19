#Just a quick script to convert gifs to PNG
#Requires ImageMagick's convert utility
#I also went through and added transparency manually with GIMP
find -name "*.gif" -exec convert {} {}.png \;
#Rename the awkward endings (uncoment the second if you're using perl's rename)
rename "gif.png" "png" *.png
#rename "s/gif.png/png" *.png
