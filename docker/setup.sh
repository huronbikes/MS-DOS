#/bin/sh

tar --directory=/src/ms_dos/4/ -cf /freedos/src.tar src/

guestfish <<EOF
add /freedos/freedos.img
run
mount /dev/sda1 /
upload /freedos/scripts/fdconfig.sys /fdconfig.sys
upload /freedos/scripts/fdauto.bat /fdauto.bat
tar-in /freedos/src.tar /
EOF
