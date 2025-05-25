#!/bin/bash
ffmpeg -re -i "https://cdn.catiacast.video/abr/8d2ffb0aba244e8d9101a9488a7daa05/playlist.m3u8" \
-c:v libx264 -preset veryfast -maxrate 3000k -bufsize 6000k \
-pix_fmt yuv420p -g 50 -c:a aac -b:a 160k -ar 44100 \
-f flv "rtmps://live-api-s.facebook.com:443/rtmp/FB-122193149798125285-0-Ab1FqrQ_8fh9RQFlcMgO73Sb"
