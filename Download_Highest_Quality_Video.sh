yt-dlp -f "bestvideo+bestaudio[ext=m4a]/best" \
  --embed-thumbnail --embed-subs --add-metadata \
  -ciw \
  -o "%(upload_date)s-%(title)s.%(ext)s" \
  $*

