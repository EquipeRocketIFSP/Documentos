gource compiled.txt `
    --key `
    --camera-mode overview `
    --user-image-dir ./Avatar `
    --caption-file ./Avatar/caption.txt `
    --caption-duration 0.25 `
    --max-file-lag 0.0025 `
    --seconds-per-day 1 `
    --auto-skip-seconds 1 `
    --output-framerate 25 `
    -o gource.ppm

ffmpeg -y `
    -r 60 `
    -f image2pipe `
    -vcodec ppm `
    -i gource.ppm `
    -vcodec libx264 `
    -preset medium  `
    -pix_fmt yuv420p `
    -crf 1 `
    -threads 0 `
    -bf 0 `
    gource.mp4