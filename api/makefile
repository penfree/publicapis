#encoding=utf8
#
# 	Copyright 2016 北京大数医达科技有限公司
#

.PHONY: python go 

CurrentDir := $(RootWorkDir)/api
RootAPIDir := $(CurrentDir)

# GoRootPackage
GoRootPackage := github.com/iyoudoctor/publicapis/gen/go
# Some compile flags
GoCompileFlag := Mgoogle/protobuf/empty.proto=github.com/golang/protobuf/ptypes/empty,Mvendor/google/api/annotations.proto=$(GoRootPackage)/google/api,Mgoogle/protobuf/descriptor.proto=github.com/golang/protobuf/protoc-gen-go/descriptor

export RootAPIDir
export GoRootPackage
export GoCompileFlag

python:
	@$(MAKE) -C $(CurrentDir)/iyoudoctor python

go:
	@$(MAKE) -C $(CurrentDir)/iyoudoctor go

