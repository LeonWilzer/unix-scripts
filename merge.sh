#!/bin/sh
# Mux Psycho-Pass

# magic that allows folders with dots to not cause issues
IFS='
'
set -f

#actual loop
for number in {1..11}; do
/usr/bin/mkvmerge --ui-language de_DE --output "/home/lukas/Schreibtisch/ani/psycho-pass/s2/mux/Psycho-Pass 2 - ${number} (BD 1080p Hi10 FLAC).mkv" --language 0:ja --track-name '0:BD 1080p 10bit [SCY]' --display-dimensions 0:1920x1080 --language 1:en --track-name '1:English 5.1 FLAC' --language 2:ja --track-name '2:Japanese 2.0 FLAC' --sub-charset 3:UTF-8 --language 3:en --track-name '3:Signs & Songs [SCY]' --default-track 3:no --forced-track 3:no --sub-charset 4:UTF-8 --language 4:en --track-name '4:Full Subtitles [Commie/SCY]' '(' /home/lukas/Schreibtisch/ani/psycho-pass/s2/scy/${number}.mkv ')' --no-global-tags --no-chapters --sub-charset 0:UTF-8 --language 0:en --track-name '0:Signs & Songs [Kametsu]' --forced-track 0:yes --sub-charset 1:UTF-8 --language 1:en --track-name '1:Full Subtitles [Commie/MK/Kametsu]' '(' /home/lukas/Schreibtisch/ani/psycho-pass/s2/kametsu/${number}.mkv ')' --title "" --track-order 0:0,0:1,0:2,1:0,0:3,1:1,0:4
done


