python scanner.py -p $1 -d $2 > output.txt
convert -size 10000x10000 xc:$5 -font /usr/local/share/ghostscript/fonts/n022004l.pfb -pointsize 12 -fill $4 -draw "text 0,0 '$(cat output.txt)'" out.jpg
convert out.jpg -trim $3
rm output.txt
rm out.jpg
open $3
#convert -size 10000X10000 $1 original.jpg
#convert original.jpg -trim original.jpg
#convert +append ascii.jpg original.jpg sidebyside.jpg
#open sidebyside.jpg