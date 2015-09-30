# Anima
Video a Gif para Linux y OS X (Video to Gif for Linux and OS X)
<ul>
<li>anima.sh - Anima selecciona una parte predeterminada de un video para convertirlo a Gif animado.</li>
</ul>

Funcionamiento: ./anima.sh video.mp4 00:01:00 05

El ejemplo de arriba muestra que de video.mp4, a partir del minuto 1, extraerá 5 segundos para crear el gif animado. Los gifs usan resolución de 480px de ancho (respetando la relación de aspecto del video), y se guardan con el mismo nombre del video. Pongan los comandos en ese orden.

Anima requiere de FFmpeg y convert (incluido en imagemagick) para encodear el video a Gif. Además de notify-send (Linux) para la notificación de escritorio cuando esté listo el Gif.
