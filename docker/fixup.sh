#/bin/sh
# cribbed from Jim Hall's video https://www.youtube.com/watch?v=X7r76V_gWQ8 

for file in MAPPER/GETMSG.ASM SELECT/SELECT2.ASM SELECT/USA.INF; do
    sed -i -re 's/\xEF\xBF\xBD|\xC4\xBF|\xC4\xB4/#/g' /src/ms_dos/4/src/$file
done

find /src/ms_dos/4/src -iname '*.BAT' -o -iname '*.ASM' -o -iname '*.SKL' -o -iname 'ZERO.DAT' -o -iname 'LOCSCR' | xargs unix2dos -f
