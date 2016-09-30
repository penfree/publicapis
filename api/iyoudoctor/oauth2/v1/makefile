#encoding=utf8
#
# 	Copyright 2016 北京大数医达科技有限公司
#

.PHONY: python go clean

CurrentDir := $(RootWorkDir)/api/iyoudoctor/oauth2/v1
ProtoFiles := service_message.proto service.proto

python: $(ProtoFiles)
	@# Compile python modules
	python -m grpc.tools.protoc -I . -I $(RootAPIDir) -I $(RootWorkDir)/include -I _thirdparty=$(RootWorkDir)/include --python_out=. --grpc_python_out=. $(ProtoFiles)
	@# Insert the encoding to script head
	$(Sed) -i "1s/^/#encoding=utf8\n/" *.py
	@# Ensure output directory
	mkdir -p $(PythonGenPath)/iyoudoctor/oauth2/v1
	@# Copy generated python files
	mv *.py $(PythonGenPath)/iyoudoctor/oauth2/v1/
	@# Generate the __init__.py file
	touch $(PythonGenPath)/iyoudoctor/oauth2/v1/__init__.py

go: $(ProtoFiles)
	@# Compile go modules
	protoc -I . -I $(RootAPIDir) -I $(RootWorkDir)/include -I _thirdparty=$(RootWorkDir)/include --go_out=plugins=grpc,$(GoCompileFlag):. $(ProtoFiles)
	@# NOTE: We donot generate go gateway for this service
	@# Ensure output directory
	mkdir -p $(GoGenPath)/iyoudoctor/oauth2/v1
	@# Copy generated go files
	mv *.go $(GoGenPath)/iyoudoctor/oauth2/v1/

clean:
	rm *.py *.go
