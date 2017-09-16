#!/bin/bash
set -x
# Knit Rmarkdown with rake
rake knitall

# Build the site with Jekyll
cd devvartpoddar/
bundle exec jekyll build

# Compress assets with Zopfli
# zopfli/zopfli --i1000 _site/**/*.html _site/*.html  _site/**/*.css _site/*.css _site/**/*.js _site/*.js _site/**/*.xml _site/*.xml
