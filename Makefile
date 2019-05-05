NAME := go-minecraft
IMPORT := github.com/kleister/$(NAME)
SHELL := bash

ifeq ($(OS), Windows_NT)
	HAS_GORUNPKG := $(shell where gorunpkg)
else
	HAS_GORUNPKG := $(shell command -v gorunpkg)
endif

PACKAGES ?= $(shell go list ./... | grep -v /vendor/)
SOURCES ?= $(shell find . -name "*.go" -type f -not -path "./vendor/*")
GENERATE ?= $(PACKAGES)

TAGS ?=
LDFLAGS += -s -w

.PHONY: all
all: build

.PHONY: sync
sync:
	go mod download

.PHONY: clean
clean:
	go clean -i ./...

.PHONY: fmt
fmt:
	gofmt -s -w $(SOURCES)

.PHONY: vet
vet:
	go vet $(PACKAGES)

.PHONY: staticcheck
staticcheck: gorunpkg
	gorunpkg honnef.co/go/tools/cmd/staticcheck -tags '$(TAGS)' $(PACKAGES)

.PHONY: lint
lint: gorunpkg
	for PKG in $(PACKAGES); do gorunpkg golang.org/x/lint/golint -set_exit_status $$PKG || exit 1; done;

.PHONY: generate
generate: gorunpkg
	go generate $(GENERATE)

.PHONY: embedmd
embedmd: gorunpkg
	gorunpkg github.com/campoy/embedmd -w README.md

.PHONY: test
test: gorunpkg
	gorunpkg github.com/haya14busa/goverage -v -coverprofile coverage.out $(PACKAGES)

.PHONY: build
build: $(SOURCES)
	go build -i -v -tags '$(TAGS)' -ldflags '$(LDFLAGS)' -o /dev/null ./...

.PHONY: gorunpkg
gorunpkg:
ifndef HAS_GORUNPKG
	go get -u github.com/vektah/gorunpkg
endif
