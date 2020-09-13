#!/bin/bash
# Installing Plugins to /opt/minecraftServer easily.
# i'm very lazy.

# Author: lumey

# First, let's see how the user wants to install the plugin.
# The user will be able to choose if they want to unzip then move or to just move it

# Note: Your plugins *MUST* be located in a folder named /plugins/, change the code if you must.

# ALERT: messy code ahead.

install-mcs-plugin(){
if  [[ $1 = "-u" ]]; then
 if [[ -e $2 ]]; then
 if [[ ${2: -4} == ".zip" ]]; then
 echo 'ALERT!!!'
 echo 'Before continuing, please make sure that the zip ONLY CONTAINS .JAR FILES.'
 echo "File to be unzipped: " ${2}
    read -p "Do you wish to continue? [y/N]" yn
    case $yn in
        [Yy]* ) echo 'Unzipping, please wait.'; unzip $2 -d $SERVER_LOCATION/plugins/;;
        [Nn]* ) echo 'Cancelled.';;
        * ) echo "Please answer yes or no.";;
    esac
    else
    echo 'Files are required to be .ZIPs to be unzipped.'
    fi
    else
    echo 'Not a file.'
fi
 
 fi
 # Copying files
 # Check if user is using right tag.
if  [[ $1 = "-m" ]]; then
# Check if the file exists.
if [[ -e $2 ]]; then
# Check the file format.
if [[ ${2: -4} == ".jar" ]]; then
 echo "File to be copied: "${2}
    read -p "Do you wish to continue? [y/N]" yn
    case $yn in
        [Yy]* )  echo 'Moving file, please wait.'; cp $2 $SERVER_LOCATION/plugins/; echo 'Finished!';;
        [Nn]* ) echo 'Cancelled.';;
        * ) echo "Cancelled.";;
    esac
    else
    echo 'Files are required to be .JARs, this is to protect your server, if your file is a .ZIP, try using -u'
    fi
else
echo 'Not a file.'
 fi
 fi
 if [[ $1 = "-help" ]]; then
 echo 'install-mcs-plugin'
 echo "Makin' your un-zippin' easier."
 echo
 echo "Commands:"
 echo "-u - Unzip the defined file."
 echo "Usage: -u [path-to-file.zip]"
 echo
 echo "-m - Copy the defined file."
 echo "Usage: -m [path-to-file.jar]"
                                                  
 fi
 }
