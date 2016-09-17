#encoding=utf8
#
# 	Copyright 2016 北京大数医达科技有限公司
#

.PHONY: python go 

CurrentDir := $(RootWorkDir)/include

python:
	@# Ensure the directory
	mkdir -p $(PythonGenPath)/_thirdparty
	@# Run sub modules
	@$(MAKE) -C $(CurrentDir)/google python
	@# Create __init__.py
	touch $(PythonGenPath)/_thirdparty/__init__.py

go:
	@$(MAKE) -C $(CurrentDir)/google go

