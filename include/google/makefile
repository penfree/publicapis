#encoding=utf8
#
# 	Copyright 2016 北京大数医达科技有限公司
#

.PHONY: python go

CurrentDir := $(RootWorkDir)/include/google

python:
	@# Ensure the directory
	mkdir -p $(PythonGenPath)/_thirdparty/google
	@# Run sub modules
	@$(MAKE) -C $(CurrentDir)/api python
	@# Create __init__.py
	touch $(PythonGenPath)/_thirdparty/google/__init__.py

go:
	@$(MAKE) -C $(CurrentDir)/api go
