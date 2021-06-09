# hee-develop.github.io

Private blog made by Gatsby

## Construction
```
*            gh-pages (subtree)
|
 \
  *          main
  | \
  |  |
  |  *       hee-blog-frame (submodule)
```

## Used
`Gatsby` `React` `GraphQL` `styled-components`

## How to publish
```shell
# pwd
# .../hee-develop

# create static pages
./scripts/publish.sh

# push static pages to `gh-pages`
git add published/
git commit -m '...'
git subtree push --prefix published origin gh-pages
```

### Force publish(how to force-push to `gh-pages` subtree)
```shell
# ...
git push origin `git subtree split --prefix published main`:gh-pages --force
```
Use `git subtree split --prefix published main` to get latest commit's hash; `[source]:[destination]` to push commit onto dest branch

## Get latest blog frame
```shell
git submodule update --remote
```
