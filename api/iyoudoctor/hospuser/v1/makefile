#encoding=utf8
#
# 	Copyright 2016 北京大数医达科技有限公司
#

SHELL := /bin/bash

.PHONY: python go clean

CurrentDir := $(RootWorkDir)/api/iyoudoctor/hospuser/v1
ProtoFiles := data.proto service_message.proto service.proto

python: $(ProtoFiles)
	@# Compile python modules
	python -m grpc.tools.protoc -I . -I $(RootAPIDir) -I $(RootWorkDir)/include -I _thirdparty=$(RootWorkDir)/include --python_out=. --grpc_python_out=. $(ProtoFiles)
	@# Insert the encoding to script head
	$(Sed) -i "1s/^/#encoding=utf8\n/" *.py
	@# Ensure output directory
	mkdir -p $(PythonGenPath)/iyoudoctor/hospuser/v1
	@# Copy generated python files
	mv *.py $(PythonGenPath)/iyoudoctor/hospuser/v1
	@# Generate the __init__.py file
	touch $(PythonGenPath)/iyoudoctor/hospuser/v1/__init__.py

go: $(ProtoFiles)
	@# Compile go modules
	protoc -I . -I $(RootAPIDir) -I $(RootWorkDir)/include -I _thirdparty=$(RootWorkDir)/include --go_out=plugins=grpc,$(GoCompileFlag):. $(ProtoFiles)
	@if [ $(GoGateway) == 1 ]; then \
		protoc -I=. -I $(RootAPIDir) -I $(RootWorkDir)/include -I _thirdparty=$(RootWorkDir)/include --grpc-gateway_out=$(GoCompileFlag),logtostderr=true:. service.proto; \
	fi
	@# Ensure output directory
	mkdir -p $(GoGenPath)/iyoudoctor/hospuser/v1
	@# Copy generated go files
	mv *.go $(GoGenPath)/iyoudoctor/hospuser/v1/

clean:
	rm *.py *.go
