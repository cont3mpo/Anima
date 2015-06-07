#!/bin/bash
nom="`echo $1 | sed 's/\.[^.]*$//'`"
if [ "$1" ] && [ "$2" ] && [ "$3" ]; then
echo "Anima - Encodeando video a Gif..."
mkdir -p .caps
ffmpeg -ss "$2" -i "$1" -vf scale=480:-1 -r 10 -t "$3" .caps/ima%04d.png 2> /tmp/anima-error.log
convert .caps/ima*.png "$nom".gif 2> /tmp/anima-error.log
rm -r .caps
notify-send "Anima" "¡Gif listo!"
echo "Anima - ¡Gif listo!"
else
echo "Anima - Faltó video o tiempo o duración."
fi
