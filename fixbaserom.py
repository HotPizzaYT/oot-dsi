import os.path
from os import path
import sys
import struct
import hashlib


# Determine if we have a ROM file
romFileName = ""
if (path.exists("baserom_original.z64")):
    romFileName = "baserom_original.z64"
elif (path.exists("baserom_original.n64")):
    romFileName = "baserom_original.n64"

# Read in the original ROM
if (romFileName != ""):
    print("File '" + romFileName + "' found.")
    with open(romFileName, mode='rb') as file:
        fileContent = bytearray(file.read())

        # Check if ROM needs to be byte swapped
        if (fileContent[0] == 0x40):
             # Byte Swap ROM
            # TODO: This is pretty slow at the moment. Look into optimizing it later...
            print("ROM needs to be byte swapped...")
            i = 0
            while (i < len(fileContent)):
                tmp = struct.unpack_from("BBBB", fileContent, i)
                struct.pack_into("BBBB", fileContent, i + 0, tmp[3], tmp[2], tmp[1], tmp[0])
                i += 4

                perc = float(i) / float(len(fileContent))

                if (i % (1024 * 1024 * 4) == 0):
                    print(str(perc * 100) + "%")
        
            print("Byte swapping done.")
else:
    print("Error: Could not find baserom_original.z64/baserom_original.n64.")
    sys.exit(1)
    
# Strip the overdump
print("Stripping overdump...")
strippedContent = list(fileContent[0:0x3600000])

# Patch the header
print("Patching header...")
strippedContent[0x3E] = 0x50

# Check to see if the ROM is a "vanilla" Debug ROM
md5Hash = hashlib.md5(bytearray(strippedContent)).hexdigest()

if (str(md5Hash) != "f0b7f35375f9cc8ca1b2d59d78e35405"):
    print("Error: Expected a hash of f0b7f35375f9cc8ca1b2d59d78e35405 but got " + str(md5Hash) + ". The baserom is probably not \"vanilla\"")
    sys.exit(1)

# Write out our new ROM
print("Writing new ROM 'baserom.z64'.")
with open("baserom.z64", mode="wb") as file:
    file.write(bytes(strippedContent))

print("Done!")

