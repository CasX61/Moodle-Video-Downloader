
if [ $# -lt 2 ]; then
    echo "Usage: $0 <m3u8_url> <output_filename>"
    echo "Example: $0 https://example.cloudfront.net/video.m3u8 lecture01.mp4"
    exit 1
fi

url=$1
outname=$2


if ! command -v ffmpeg &> /dev/null; then
    echo "Error: ffmpeg is not installed. Please install it first."
    echo "Install with: brew install ffmpeg"
    exit 1
fi

echo "Downloading video from: $url"
echo "Output file: $outname"
echo "This may take a while depending on video size..."


ffmpeg -i "$url" -c copy -bsf:a aac_adtstoasc "$outname"


if [ $? -eq 0 ]; then
    echo "✓ Download completed successfully: $outname"
else
    echo "✗ Error: Download failed"
    exit 1
fi
