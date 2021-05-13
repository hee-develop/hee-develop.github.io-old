# hee-develop
React를 공부하면서 만드는 개발 블로그

## 글 작성(출판)
```shell
# SSG로 정적 페이지 생성
./scripts/publish.sh

# Github Page용 브랜치 'gh-pages'에 푸시
git add out/
git commit
git subtree push --prefix out origin gh-pages
```

## 블로그(프레임)의 변경사항 반영
```shell
git submodule update --remote
```

## `gh-pages` subtree에 force-push
commit까지는 일반 push와 같음.
```shell
git push origin `git subtree split --prefix out main`:gh-pages --force
```
`git subtree split --prefix out main`을 통해 subtree의 최신 commit의 hash를 구한 뒤, 해당 commit을 gh-pages에 강제로 push한다.
