#!/bin/sh

if [ -f /freedos/freedos.img ]; then
    rm /freedos/freedos.img
fi

unzip -o -d /freedos /freedos/freedos.zip
mv /freedos/*.img /freedos/freedos.img

if [ -f /freedos/src.tar ]; then
    rm /freedos/src.tar
fi
