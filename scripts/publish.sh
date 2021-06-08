#!/bin/bash

ROOT=$(pwd)

export ARTICLE_PATH="${ROOT}/articles"

cd "${ROOT}/hee-blog-frame/"

echo '=== Build static pages ==='
npm run build

if [ $? -ne 0 ]; then
  echo 'FAILED: Gatsby build failed.'
  exit
fi

# check old static pages
if [[ -f "${ROOT}/published/.nojekyll" ]]; then
  echo '=== Remove old pages ==='
  rm -rf "${ROOT}/published/"
fi

echo '=== Add .nojekyll ==='
touch './public/.nojekyll'

echo '=== Move new pages ==='
mv "./public/" "${ROOT}/published/"

echo 'Publish is ready.'
