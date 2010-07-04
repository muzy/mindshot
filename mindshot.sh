#!/bin/sh
#
# MindShot (c) Sebastian Muszytowski
# See README for more information on howto use it.
print_help() {
 echo "See README for more information on howto use this script"
}

do_screenshot() {
 . ./config.inc
 touch ${destdir}${filename}.ps
 touch ${destdir}${filename}.png
 ${firefoxcommand} --display=localhost:2.0 -print ${1} -printprinter "browsershot" -printmode PS -printfile ${destdir}${filename}.ps
 if [ "$pdf" = "true" ]
 then
  ps2pdf ${destdir}${filename}.ps ${destdir}${filename}.pdf
 fi

 convert -density 150 ${destdir}${filename}.ps ${destdir}${filename}.png

 if [ "$jpeg" = "true" ]
 then
  convert ${destdir}${filename}.png ${destdir}${filename}.jpeg
 fi
 if [ "$bmp" = "true" ]
 then
  convert ${destdir}${filename}.png ${destdir}${filename}.bmp
 fi
 if [ "$png" = "false" ]
 then
  rm ${destdir}${filename}.png
 fi
 if [ "$ps" = "false" ]
 then
  rm ${destdir}${filename}.ps
 fi
}

if [ -z "$1" ]
then
  print_help
else
  do_screenshot ${1}
fi

