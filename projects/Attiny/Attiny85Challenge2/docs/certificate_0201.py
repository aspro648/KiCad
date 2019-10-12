
from __future__ import division
from PIL import Image, ImageDraw, ImageFont, ImageOps
import sys, os, shutil


data = {}


def loadNames(fName):
    ''' Open db.csv and parse names and award'''

    print '\nLoading "%s"' % fName
    global data
    try:
        inFile = open(fName, 'r')
    except:
        print "\nCouldn't find %s file!" % fName
        print "Is it in same directory as python script?\n"
        sys.exit()
    for line in inFile.readlines()[1:]:
        vals = line.strip().split(',')
        print(vals)
        if len(vals) > 1:
            data[vals[0]] = vals[1]
    inFile.close()
        
        
def addText(img, text, fontName, fontSize, (x, y), fill='black', limit=None):
    ''' Add centered text to image at (x, y) from center '''
    #im = Image.new('RGB', (730, 54))
    imgX, imgY = img.size
    draw = ImageDraw.Draw(img)
    fontFile = 'files/fonts/' + fontName
    print fontFile, os.path.isfile(fontFile)
    font = ImageFont.truetype(fontFile, fontSize)
    xx,yy = draw.textsize(text, font=font)
    if 'too long' in text.lower():
        print xx
    if limit:
        while xx > limit:
            fontSize = int(fontSize * 0.95)
            font = ImageFont.truetype(fontName, fontSize)
            xx,yy = draw.textsize(text, font=font)
            print fontSize, ' ', xx            

    # determine offset from center
    x = int((imgX - xx) / 2) + x
    y = int((imgY - yy) / 2) + y
    draw.text((x, y), text, fill=fill, font=font)
    del draw
    return img


def addLine(img, (x, y), width):
    ''' add a horizontal line at (x, y) from center '''
    imgX, imgY = img.size
    draw = ImageDraw.Draw(img)

    # determine offset from center
    x = int(imgX / 2 + x - width / 2)
    y = int(imgY /2  + y)
    draw.line([(x, y), (x + width, y)], width=2, fill='black')
    del draw
    return img


# script fonts
#VIVALDII.TTF
#KUNSTLER.TTF
#BRUSHSCI
#VLADIMIR (signature)
#MISTRAL

def createCert(name, date):

    print '%s -> %s' % (name, date)
    # open certificate border
    img = Image.open('files/award_template.png')
    
    # add name and award
    addText(img, 'Certificate of Membership in the', 'OLDENGL.TTF', 72, (0, 0), limit=1200)
    addText(img, '0201 Club', 'OLDENGL.TTF', 120, (0, 95), limit=1200)        
    addText(img, 'for completion of the SMD Challenge by', 'georgiai.ttf', 36, (0, 200))
    addText(img, name, 'BRUSHSCI.TTF', 140, (0, 300), limit=650)
    #if award != '' or True:
    #    #addText(img, 'and membership in the', 'georgiaz.ttf', 32, (0, 260))
    #    #addText(img, '0201 Club', 'georgiab.ttf', 64, (0, 330), limit=700)
    addText(img, '%s' % date, 'georgiai.ttf', 32, (0, 410))

    # add signature
    addText(img, cubmaster, 'MISTRAL.TTF', 60, (450, 400), fill='darkblue')
    addText(img, 'www.MakersBox.us', 'georgiai.ttf', 32, (450, 444))
    addLine(img, (450, 424), 420)

    # add seal
    seal = Image.open('files/seal.png')
    img.paste(seal, (185, 735), seal)

    if (os.path.isfile('photos/%s.jpg' % name) and
        os.path.isfile('photos/%s2.jpg' % name)):

        # find picture, resize to 544 x 390
        pic1 = Image.open('../photos/%s.jpg' % name)
        imgX, imgY = pic1.size
        pic1 = pic1.resize((int(imgX * 390 / imgY), 390))
        img.paste(pic1, (int(134 + 111), 177))

        pic2 = Image.open('photos/%s2.jpg' % name)
        imgX, imgY = pic2.size
        pic2 = pic2.resize((int(imgX * 390 / imgY), 390))
        img.paste(pic2, (int(825 + 111 / 2), 177))
    elif os.path.isfile('photos/%s.jpg' % name):
        # find picture, resize to 544 x 390
        pic1 = Image.open('photos/%s.jpg' % name)
        imgX, imgY = pic1.size
        pic1 = pic1.resize((int(imgX * 390 / imgY), 390))
        if event_logo:
            img.paste(pic1, (int(134 + 111), 177))
            pic2 = Image.open(event_logo)
            imgX, imgY = pic1.size
            pic2 = pic2.resize((int(imgX * 390 / imgY), 390))
            img.paste(pic2, (int(825 + 111 / 2), 177), pic2) 
        else:
            img.paste(pic1, (565, 177)) # centered single picture            

    else:
        if event_logo:
            pic1 = Image.open(event_logo)
            imgX, imgY = pic1.size
            pic1 = pic1.resize((int(imgX * 350 / imgY), 350))
            img.paste(pic1, (int(1650 / 2 - 175), 197), pic1)        
            print "\tNo picture found!"

    # save to 'certificate' folder
    if name == '': name = 'blank'
    name = name.replace('"', '-')
    img.save('certificates/%s.png' % name, 'PNG')
    print 'certificates/%s.png' % name

db = 'awards.csv'
event = "Certificate of Membership"
cubmaster = 'Ken Olsen '
event_logo = 'files/smd_challenge.png'


if not os.path.isdir('certificates'):
    os.mkdir('certificates')
    print 'Created certicates directory'

# load name and awards
loadNames(db)


for name, date in data.iteritems():
    # make certificate
    if not os.path.isfile('certificates/%s.png' % name):
        createCert(name, date)
