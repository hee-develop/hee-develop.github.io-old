#!/bin/bash

ROOT=$(pwd)

export ARTICLE_PATH="${ROOT}/articles"

cd "${ROOT}/hee-blog-frame/"

npm run develop
