#encoding=utf8
#
# 	Copyright 2016 北京大数医达科技有限公司
#

.PHONY: python go clean

CurrentDir := $(RootWorkDir)/api/iyoudoctor/internals/framework
Protofiles := invocation.proto requestsign.proto

python: $(Protofiles)
	@# Compile python modules
	python -m grpc.tools.protoc -I . -I $(RootAPIDir) -I $(RootWorkDir)/include -I _thirdparty=$(RootWorkDir)/include --python_out=. --grpc_python_out=. $(Protofiles)
	@# Insert the encoding to script head
	$(Sed) -i "1s/^/#encoding=utf8\n/" *.py
	@# Ensure output directory
	mkdir -p $(PythonGenPath)/iyoudoctor/internals/framework
	@# Copy generated python files
	mv *.py $(PythonGenPath)/iyoudoctor/internals/framework/
	@# Copy the __init__.py file
	cp __init__.py.template $(PythonGenPath)/iyoudoctor/internals/framework/__init__.py

go: $(Protofiles)
	@# Compile go modules
	protoc -I . -I $(RootAPIDir) -I $(RootWorkDir)/include -I _thirdparty=$(RootWorkDir)/include --go_out=plugins=grpc,$(GoCompileFlag):. $(Protofiles)
	@# NOTE: We donot generate go gateway for this service
	@# Ensure output directory
	mkdir -p $(GoGenPath)/iyoudoctor/internals/framework
	@# Copy generated go files
	mv *.go $(GoGenPath)/iyoudoctor/internals/framework/

clean:
	rm *.py *.go
