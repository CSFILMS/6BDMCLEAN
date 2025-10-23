@echo off
echo ================================================
echo Mobile Video Compression Script
echo ================================================
echo.
echo This will create a mobile-optimized version of your video.
echo Original: HAVETOENDSOMEHOW.mp4 (29.5 MB)
echo Target: HAVETOENDSOMEHOW_mobile.mp4 (approx 5-8 MB)
echo.
echo Settings:
echo - Resolution: 720p (1280x720) or lower
echo - Bitrate: 500k (much smaller file size)
echo - Audio: Removed (video is muted anyway)
echo - Format: H.264 (best mobile compatibility)
echo.
pause

cd /d "%~dp0VIDEOS"

echo.
echo Starting compression...
echo.

ffmpeg -i HAVETOENDSOMEHOW.mp4 -vf "scale=1280:720:force_original_aspect_ratio=decrease,pad=1280:720:(ow-iw)/2:(oh-ih)/2" -c:v libx264 -preset slow -crf 28 -b:v 500k -maxrate 500k -bufsize 1000k -an -movflags +faststart HAVETOENDSOMEHOW_mobile.mp4

echo.
echo ================================================
echo Compression complete!
echo ================================================
echo.
echo Original file: HAVETOENDSOMEHOW.mp4
echo Mobile file: HAVETOENDSOMEHOW_mobile.mp4
echo.

dir HAVETOENDSOMEHOW*.mp4

echo.
echo The mobile version should be significantly smaller.
echo Test it on your mobile device to ensure quality is acceptable.
echo.
pause

