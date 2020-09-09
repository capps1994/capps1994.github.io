export JEKYLL_VERSION=3.8
docker run --rm \
  -v "$PWD:/srv/jekyll" \
  -v "$PWD/vendor/bundle:/usr/local/bundle" \
  -p 4000:4000 \
  -it jekyll/jekyll:$JEKYLL_VERSION \
  bash
