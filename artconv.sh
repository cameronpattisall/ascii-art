python scanner.py > output.txt
convert -size 10000x10000 xc:white -font /usr/local/share/ghostscript/fonts/n022004l.pfb -pointsize 12 -fill black -draw "text 0,0 '$(cat output.txt)'" out.jpg
convert out.jpg -trim ascii.jpg
rm output.txt
rm out.jpg
open ascii.jpg

#convert +append ascii.jpg mm.jpg sidebyside.jpg
#open sidebyside.jpg