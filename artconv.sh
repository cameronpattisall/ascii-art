python scanner.py -p $1 -d $2 > output.txt
convert -size 10000x10000 xc:white -font /usr/local/share/ghostscript/fonts/n022004l.pfb -pointsize 12 -fill black -draw "text 0,0 '$(cat output.txt)'" out.jpg
convert out.jpg -trim ascii.jpg
rm output.txt
rm out.jpg
open ascii.jpg
#convert -size 10000X10000 $1 original.jpg
#convert original.jpg -trim original.jpg
#convert +append ascii.jpg original.jpg sidebyside.jpg
#open sidebyside.jpg