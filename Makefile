NAME := kvraft
VERSION	:= $(shell cat ./VERSION)
GO_VERSION := $(shell go version)
REVISION := $(shell git rev-parse --short HEAD)
PROJECT_ROOT := $(shell pwd)

# All go source files
# SOURCES := $(shell find . -name '*.go' -not -name '*_test.go')
#
#


build:
	go build -o kvraft main.go

test:
	go test -v ./...

install:
	go get -t -d -v ./...

fmt:
	go fmt ./...
