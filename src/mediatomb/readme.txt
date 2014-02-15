MediaTomb - http://mediatomb.cc/

NOTES ON THE PACKAGE

This is a statically linked 0.11 version of MediaTomb, it can be used as an
addition to exiting firmware and should run without any dependencies provided
that you downloaded the correct package for your CPU.

Unlike the other MediaTomb packages this one is location independent and can 
be unpacked anywhere on the system. The only limitation is that you need to
run the start script from the directory where it is located.

To start the server simply run ./mediatomb.sh from the current directory,
if you attempt to run it from a different directory it will not work - the
script sets the environment so the binary knows where to look for the
files that are required. If you want to make the script independant of the
launch location, edit the script and modify the LAUNCHDIR variable, setting
it to the path of the package installation.

The server configuration and the database will appear in a subdirectory called
"config" after the first launch. You can tune ./config/config.xml for a 
custom configuration.

It is strongly recommended to edit the config.xml and set the 
<filesystem-charset> option to match the encoding of your filesystem. Usually
this can not be autodetected in embedded environments, since most NAS devices
will not have locale support. UTF-8 is usually a good guess.
Refer to section 6.2 of the documentation:
http://mediatomb.cc/pages/documentation

Below is the information on what libraries are compiled into the package:

CONFIGURATION SUMMARY ----

sqlite3               : yes
mysql                 : disabled
libjs                 : yes
libmagic              : yes
inotify               : yes
libexif               : yes
expat                 : yes
id3lib                : disabled
taglib                : yes
ffmpeg                : disabled
external transcoding  : yes
libextractor          : disabled

The static binary was compiled against the following libraries:

expat     http://downloads.sourceforge.net/expat/expat-2.0.0.tar.gz
file      ftp://ftp.astron.com/pub/file/file-4.18.tar.gz
js        http://ftp.mozilla.org/pub/mozilla.org/js/older-packages/js-1.5.tar.gz
libexif   http://downloads.sourceforge.net/libexif/libexif-0.6.13.tar.bz2
libiconv  ftp://ftp.gnu.org/pub/gnu/libiconv/libiconv-1.11.tar.gz
sqlite3   http://www.sqlite.org/sqlite-3.5.2.tar.gz
taglib    http://developer.kde.org/~wheeler/files/src/taglib-1.4.tar.gz
uclibc    http://www.uclibc.org/downloads/uClibc-0.9.29.tar.bz2
zlib      http://www.zlib.net/zlib-1.2.3.tar.bz2

Please send a mail to jin@mediatomb.cc if you experience any problems.

