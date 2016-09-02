python scanner.py > output.txt
convert -size 2500x5000 xc:white -font /usr/local/share/ghostscript/fonts/n022004l.pfb -pointsize 12 -fill black -draw "text 0,0 '$(cat output.txt)'" out.jpg
open out.jpg