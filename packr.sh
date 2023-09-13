#!/bin/bash

#Get the needed software
sudo apt-get install ctorrent

# Ask for the name of the archive
echo "Please enter a name for your archive:"
read name

# Ask for the password
echo "Please enter a password for your archive:"
read -s password

# Ask for the folder path
echo "Please enter the path to the folder you want to encrypt and create a torrent for:"
read folder


# Lock the suitcase and create the ticket 
zip -r -9 -e -P $password $folder/$name.zip $folder | ctorrent -t -u "udp://tracker.opentrackr.org:1337/announce" -
