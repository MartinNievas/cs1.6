docker run -it --rm \
    --env="DISPLAY" \
    --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
    -e HEIGHT=1280 \
    -e WIDTH=1920 \
    counterstrike
