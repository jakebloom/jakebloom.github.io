#!/bin/bash
docker run --rm \
  -p 4000:4000 \
  -v "$PWD":/srv/jekyll \
  jekyll/jekyll:pages \
  sh -c "gem install webrick && jekyll serve --host 0.0.0.0"