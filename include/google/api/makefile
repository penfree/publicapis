#encoding=utf8
#
# 	Copyright 2016 北京大数医达科技有限公司
#

.PHONY: python go

CurrentDir := $(RootWorkDir)/include/google/api

python: annotations.proto http.proto
	@# Compile to python
	python -m grpc.tools.protoc -I google/api=. --python_out=. annotations.proto http.proto
	@# Replace google.api to vendor.google.api
	$(Sed) -i "s/from google.api import/from vendor.google.api import/" $(CurrentDir)/google/api/*.py
	@# Ensure the directory, NOTE: Will put the package into vendor directory for python
	mkdir -p $(PythonGenPath)/vendor/google/api
	@# Move the generated go files
	mv $(CurrentDir)/google/api/*.py $(PythonGenPath)/vendor/google/api/
	@# Create __init__.py
	touch $(PythonGenPath)/vendor/google/api/__init__.py
	@# Remove the generated directory
	rm -rf $(CurrentDir)/google

go: annotations.proto http.proto
	@# Compile to go
	protoc -I google/api=. --go_out=Mgoogle/protobuf/descriptor.proto=github.com/golang/protobuf/protoc-gen-go/descriptor:. annotations.proto http.proto
	@# Ensure the directory
	mkdir -p $(GoGenPath)/google/api
	@# Move the generated go files
	mv $(CurrentDir)/google/api/*.go $(GoGenPath)/google/api/
	@# Remove the generated directory
	rm -rf $(CurrentDir)/google
