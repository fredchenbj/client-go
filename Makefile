GOMOD := -mod=vendor
build:
	GO111MODULE=on go build $(GOMOD) ./...

test:
	GO111MODULE=on go test ./...

check:
	GO111MODULE=off go get golang.org/x/lint/golint
	GO111MODULE=on golint `go list ./...`

all: build check test
