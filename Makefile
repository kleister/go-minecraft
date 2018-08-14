NAME := go-minecraft
IMPORT := github.com/kleister/$(NAME)

ifeq ($(OS), Windows_NT)
	HAS_RETOOL := $(shell where retool)
else
	HAS_RETOOL := $(shell command -v retool)
endif

PACKAGES ?= $(shell go list ./... | grep -v /vendor/ | grep -v /_tools/)
SOURCES ?= $(shell find . -name "*.go" -type f -not -path "./vendor/*" -not -path "./_tools/*")
GENERATE ?= $(PACKAGES)

TAGS ?=
LDFLAGS += -s -w

.PHONY: all
all: build

.PHONY: update
update:
	retool do dep ensure -update

.PHONY: sync
sync:
	retool do dep ensure

.PHONY: clean
clean:
	go clean -i ./...

.PHONY: fmt
fmt:
	gofmt -s -w $(SOURCES)

.PHONY: vet
vet:
	go vet $(PACKAGES)

.PHONY: megacheck
megacheck:
	retool do megacheck -tags '$(TAGS)' $(PACKAGES)

.PHONY: lint
lint:
	for PKG in $(PACKAGES); do retool do golint -set_exit_status $$PKG || exit 1; done;

.PHONY: generate
generate:
	retool do go generate $(GENERATE)

.PHONY: embedmd
embedmd:
	retool do embedmd -w README.md

.PHONY: test
test:
	retool do goverage -v -coverprofile coverage.out $(PACKAGES)

.PHONY: build
build: $(SOURCES)
	go build -i -v -tags '$(TAGS)' -ldflags '$(LDFLAGS)' ./version

.PHONY: retool
retool:
ifndef HAS_RETOOL
	go get -u github.com/twitchtv/retool
endif
	retool sync
	retool build
