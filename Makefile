#
# Makefile for sse by Stoney, sikang99@gmail.com
#
EDIT=vi
all: usage
usage:
	@echo "usage: make [edit|build|run|git]"
# ---------------------------------------------------------------------------
edit e:
	@echo "make (edit) [make|readme|json]"

edit-make em:
	$(EDIT) Makefile

edit-readme er:
	$(EDIT) README.md

edit-json ej:
	vi package.json

# ---------------------------------------------------------------------------
build  b:
	yarn install

run r:
	@echo "make (run) [client|server]"

run-client rc:
	xdg-open http://localhost:8080
	#simplehttpserver

run-server rs:
	#node server.js
	yarn run start

clean:
	rm -rf node_modules/ yarn*
# ---------------------------------------------------------------------------
git g:
	@echo ""
	@echo "make (git) [update|login|tag|status]"
	@echo ""

git-update gu:
	git add .gitignore *.md Makefile *.js *.css *.html *.json
	#git commit -m "initial commit"
	#git remote remove go.mod sse.go
	#git commit -m "add examples"
	git commit -m "update contents"
	git push

git-login gl:
	git config --global user.email "sikang99@gmail.com"
	git config --global user.name "Stoney Kang"
	git config --global push.default matching
	#git config --global push.default simple
	git config credential.helper store

git-tag gt:
	git tag v1.0.0
	git push --tags

git-status gs:
	git status
	git log --oneline -5
# ---------------------------------------------------------------------------
