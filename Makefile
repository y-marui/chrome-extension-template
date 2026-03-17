.PHONY: help test build update-charter

help: ## コマンド一覧を表示
	@grep -E '^[a-zA-Z_-]+:.*##' $(MAKEFILE_LIST) \
	  | awk 'BEGIN {FS = ":.*##"}; {printf "  %-20s %s\n", $$1, $$2}'

test: ## ユニットテストを実行
	npm test

build: ## extension.zip を生成
	npm run build

update-charter: ## dev-charter を最新版に更新 (git subtree pull)
	git subtree pull --prefix=docs/dev-charter dev-charter main --squash
