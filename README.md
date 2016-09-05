# ascii-art
Python program to transform images into ascii art
* Requires PIL module
* Requires a good font to be used for conversion in artconv.sh

To run use the following command form
```
./artconv [picture] [divident] 
```

### scanner.py
Contains python code
Change the variables filename and divident to use different pictures
* filename - the name of the image file to convert
* divident - an integer of same values 2^n by which the picture will be negatively resized

Right now the project is setup to turn a photo of Marilyn Monroe (mm.jpg) into ascii art

### artconv.sh
Shell script to run program and then convert output.txt into a reasonably sized jpg file
