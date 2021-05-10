#!/bin/bash

ROOT=$(pwd)

export ARTICLE_PATH="${ROOT}/articles"

cd "${ROOT}/hee-blog-frame/"

echo '=== Build static pages ==='
npm run build

echo '=== Export pages ==='
npm run export

# check old static pages
if [[ -f "${ROOT}/out/.nojekyll" ]]
then
  echo '=== Remove old pages ==='
  rm -rf "${ROOT}/out/"
fi

echo '=== Add .nojekyll ==='
touch './out/.nojekyll'

echo '=== Move new pages ==='
mv "./out/" "${ROOT}/out/"

echo 'Publish is ready.'
