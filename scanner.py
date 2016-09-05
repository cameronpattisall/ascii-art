from PIL import Image
import sys, argparse

parser = argparse.ArgumentParser()
parser.add_argument('-p', '--picture', help='The image to convert into ascii art')
parser.add_argument('-d', '--divident', help='The resize value by which to shrink the image (2, 4, or 8)')
args = parser.parse_args()

filename = args.picture
divident = args.divident
divident = float(divident)

pic = Image.open(filename)
width, height = pic.size
pic = pic.resize((int(width/divident),int(height/divident)),Image.ANTIALIAS)
width, height = pic.size

image = list(pic.getdata())
for x in xrange(0, height):
	for y in xrange(0, width):
		r, g, b = image[x*width+y]
		if r < 50 and g < 50 and b < 50:
			sys.stdout.write("$$")
		elif r < 150 and g < 150 and b < 150:
			sys.stdout.write("//")
		elif r < 220 and g < 220 and b < 220:
			sys.stdout.write("::")
		elif r < 245 and g < 245 and b < 245:
			sys.stdout.write("..")
		else:
			sys.stdout.write("  ")
	sys.stdout.write("\n")

pic.close()