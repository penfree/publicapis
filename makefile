#encoding=utf8
#
# The protobuf make file for iyoudoctor public apis
#
#	This script will generate codes for languages (such as python, go, etc..) in the "gen/<language>" directory
#
# 	Before runnig this script, you should have installed protobuf compiler for languages for your platform
# 	Some installation tips:
#
# 		- protoc 3.x compiler, download page: https://github.com/google/protobuf/releases, including: protoc, protobuf-python, etc..
# 		- protobuf go plugin, install by `go get -u github.com/golang/protobuf/{proto,protoc-gen-go}`
#
#   Some notes when making in mac:
#   	- You should install the gnu-sed, you could install it by brew install gnu-sed
#
# 	Copyright 2016 北京大数医达科技有限公司
#

# Get the root work directory
RootWorkDir := $(patsubst %/,%,$(dir $(abspath $(lastword $(MAKEFILE_LIST)))))
# Set the generated scripts path
GenPath := $(RootWorkDir)/gen
PythonGenPath := $(GenPath)/python
GoGenPath := $(GenPath)/go

# Get the platform
Platform := $(shell uname)

export RootWorkDir
export GenPath
export PythonGenPath
export GoGenPath
export Platform

ifeq ($(Platform), Darwin)
	Sed := gsed
else
	Sed := sed
endif

export Sed

# Check go gateway
ifndef GoGateway
	export GoGateway = 0
endif

.PHONY: clean all python go 

all: python go

python:
	@echo Build python modules
	@$(MAKE) -C $(RootWorkDir)/include python
	@$(MAKE) -C $(RootWorkDir)/api python

go:
	@echo build go modules
	@$(MAKE) -C $(RootWorkDir)/include go
	@$(MAKE) -C $(RootWorkDir)/api go

clean:
	rm -rf $(GenPath)

