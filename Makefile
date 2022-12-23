include .bingo/Variables.mk

SHELL := bash
NAME := go-minecraft
IMPORT := github.com/kleister/$(NAME)

GOBUILD ?= CGO_ENABLED=0 go build
PACKAGES ?= $(shell go list ./...)
SOURCES ?= $(shell find . -name "*.go" -type f)

TAGS ?= netgo
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
staticcheck: $(STATICCHECK)
	$(STATICCHECK) -tags '$(TAGS)' $(PACKAGES)

.PHONY: lint
lint: $(REVIVE)
	for PKG in $(PACKAGES); do $(REVIVE) -config revive.toml -set_exit_status $$PKG || exit 1; done;

.PHONY: generate
generate:
	go generate $(PACKAGES)

.PHONY: changelog
changelog: $(CALENS)
	$(CALENS) >| CHANGELOG.md

.PHONY: embedmd
embedmd: $(EMBEDMD)
	$(EMBEDMD) -w README.md

.PHONY: test
test: test
	go test -coverprofile coverage.out $(PACKAGES)

.PHONY: build
build: $(SOURCES)
	go build -i -v -tags '$(TAGS)' -ldflags '$(LDFLAGS)' -o /dev/null ./...
