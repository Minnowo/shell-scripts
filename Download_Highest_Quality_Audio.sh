yt-dlp -f "bestaudio/best" --extract-audio \
   --audio-quality 0 \
   --embed-thumbnail \
   --embed-thumbnail \
   -ciw \
   -o "%(upload_date)s-%(title)s.%(ext)s" \
   $*
