#!/bin/bash

# Optional: Stop and remove any existing container named parcel2d
docker rm -f parcel2d 2>/dev/null

# Run the Docker container directly
docker run -it --rm --name parcel2d \
  --mount type=bind,source="${PWD}/data/backgrounds",target=/data/backgrounds \
  --mount type=bind,source="${PWD}/data/objects",target=/data/objects \
  --mount type=bind,source="${PWD}/data/distractors",target=/data/distractors \
  --mount type=bind,source="${PWD}",target=/app \
  generate_parcel2d:latest
