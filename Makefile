all: clean-server build-server start-server

start: start-server
clean: clean-server

.PHONY: build-server
build-server: 
	@cd ./apps/server && deno task build

.PHONY: start-server
start-server:
	@./apps/server/.bin/server

.PHONY: clean-server
clean-server:
	@cd ./apps/server && deno task clean