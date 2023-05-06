lint: ## Does the linting
	golangci-lint run

build: lint ## compile the source code of the application to a binary named awesome-api
	go build

run: ## Run the application in background, and write logs into a file named awesome-api.log

	./awesome-api >./awesome-api.log 2>&1 &

stop: ##  Stop the application
	pkill awesome-api

clean: ## Stop the application. Delete the binary awesome-api and the log file awesome-api.log
	pkill awesome-api || true
	rm -rf awesome-api awesome-api.log coverage-integrations.out coverage-units.out

test: ## Tests for browser responses
	make unit-tests
	make integration-tests


unit-tests: ## Unitests
	@go test -v -short -coverprofile=coverage-units.out

integration-tests: ##Integration tests
	go test -v -tags=integration -coverprofile=coverage-integrations.out

help: ## Targets purpose
	@grep "#" Makefile | grep -v grep | sed "s/#//"