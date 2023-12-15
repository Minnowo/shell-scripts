#!/bin/sh

yt-dlp -o - $* | mpv - 
