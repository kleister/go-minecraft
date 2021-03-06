# Auto generated binary variables helper managed by https://github.com/bwplotka/bingo v0.2.2. DO NOT EDIT.
# All tools are designed to be build inside $GOBIN.
GOPATH ?= $(shell go env GOPATH)
GOBIN  ?= $(firstword $(subst :, ,${GOPATH}))/bin
GO     ?= $(shell which go)

# Bellow generated variables ensure that every time a tool under each variable is invoked, the correct version
# will be used; reinstalling only if needed.
# For example for calens variable:
#
# In your main Makefile (for non array binaries):
#
#include .bingo/Variables.mk # Assuming -dir was set to .bingo .
#
#command: $(CALENS)
#	@echo "Running calens"
#	@$(CALENS) <flags/args..>
#
CALENS := $(GOBIN)/calens-v0.2.0
$(CALENS): .bingo/calens.mod
	@# Install binary/ries using Go 1.14+ build command. This is using bwplotka/bingo-controlled, separate go module with pinned dependencies.
	@echo "(re)installing $(GOBIN)/calens-v0.2.0"
	@cd .bingo && $(GO) build -modfile=calens.mod -o=$(GOBIN)/calens-v0.2.0 "github.com/restic/calens"

EMBEDMD := $(GOBIN)/embedmd-v1.0.0
$(EMBEDMD): .bingo/embedmd.mod
	@# Install binary/ries using Go 1.14+ build command. This is using bwplotka/bingo-controlled, separate go module with pinned dependencies.
	@echo "(re)installing $(GOBIN)/embedmd-v1.0.0"
	@cd .bingo && $(GO) build -modfile=embedmd.mod -o=$(GOBIN)/embedmd-v1.0.0 "github.com/campoy/embedmd"

GOLINT := $(GOBIN)/golint-v0.0.0-20201208152925-83fdc39ff7b5
$(GOLINT): .bingo/golint.mod
	@# Install binary/ries using Go 1.14+ build command. This is using bwplotka/bingo-controlled, separate go module with pinned dependencies.
	@echo "(re)installing $(GOBIN)/golint-v0.0.0-20201208152925-83fdc39ff7b5"
	@cd .bingo && $(GO) build -modfile=golint.mod -o=$(GOBIN)/golint-v0.0.0-20201208152925-83fdc39ff7b5 "golang.org/x/lint/golint"

GOVERAGE := $(GOBIN)/goverage-v0.0.0-20180129164344-eec3514a20b5
$(GOVERAGE): .bingo/goverage.mod
	@# Install binary/ries using Go 1.14+ build command. This is using bwplotka/bingo-controlled, separate go module with pinned dependencies.
	@echo "(re)installing $(GOBIN)/goverage-v0.0.0-20180129164344-eec3514a20b5"
	@cd .bingo && $(GO) build -modfile=goverage.mod -o=$(GOBIN)/goverage-v0.0.0-20180129164344-eec3514a20b5 "github.com/haya14busa/goverage"

STATICCHECK := $(GOBIN)/staticcheck-v0.0.1-2020.1.6
$(STATICCHECK): .bingo/staticcheck.mod
	@# Install binary/ries using Go 1.14+ build command. This is using bwplotka/bingo-controlled, separate go module with pinned dependencies.
	@echo "(re)installing $(GOBIN)/staticcheck-v0.0.1-2020.1.6"
	@cd .bingo && $(GO) build -modfile=staticcheck.mod -o=$(GOBIN)/staticcheck-v0.0.1-2020.1.6 "honnef.co/go/tools/cmd/staticcheck"

