#encoding=utf8
#
# 	Copyright 2016 北京大数医达科技有限公司
#

.PHONY: python go

CurrentDir := $(RootWorkDir)/api/iyoudoctor/internals

python:
	@# Ensure the directory
	mkdir -p $(PythonGenPath)/iyoudoctor/internals
	@# Run sub modules
	@$(MAKE) -C $(CurrentDir)/framework python
	@#Create the __init__.py
	touch $(PythonGenPath)/iyoudoctor/internals/__init__.py

go:
	@$(MAKE) -C $(CurrentDir)/framework go
