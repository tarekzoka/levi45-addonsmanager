#!/bin/sh
#
echo "#             Uploded BY               #"
echo "**************************************************************"
echo "
  ======      =   =        =   =
  =          =  =  =       =   =
  ======    =   =   =      =   =
  =        =         =     =   = 
  ======  =           =    =   ===== "

#command: wget -q "--no-check-certificate" https://raw.githubusercontent.com/tarekzoka/levi45-addonsmanager/main/installer.sh -O - | /bin/sh ##

#############################################################
version=3.4
TMP=/tmp
# remove old plugin  #
rm -rf /usr/lib/enigma2/python/plugins/Extensions/Levi45Addons
my_em="*******************************************************************************************************"
echo $my_em
echo ""
# Download and install plugins
cd /tmp
set -e
echo "===> Downloading And Installing plugin Please Wait ......"
echo
wget "https://raw.githubusercontent.com/tarekzoka/levi45-addonsmanager/main/levi45-addonsmanager_all.tar.gz"
tar -xzf levi45-addonsmanager_all.tar.gz -C /
set +e
rm -f levi45-addonsmanager_all.tar.gz
echo $my_em
echo ""
sync
echo "##############################################################"
echo "#      levi45-addonsmanger $version INSTALLED SUCCESSFULLY             #"
echo "#             Uploded BY               #"
echo "**************************************************************"
echo "
  88888      8   8        8   8
  8         8 8 8 8       8   8
  88888    8   8   8      8   8
  8       8         8     8   8 
  88888  8           8    8   88888 "
echo "##############################################################"
#######################################################
echo "#      your Enigma will RESTART Now                  #"
echo "##############################################################"
wait 2
init 4
init 3
exit 0
