#encoding=utf8
#
# 	Copyright 2016 北京大数医达科技有限公司
#

.PHONY: python go

CurrentDir := $(RootWorkDir)/api/iyoudoctor/partner

python:
	@# Ensure the directory
	mkdir -p $(PythonGenPath)/iyoudoctor/partner
	@# Run sub modules
	@$(MAKE) -C $(CurrentDir)/mercury python
	@#Create the __init__.py
	touch $(PythonGenPath)/iyoudoctor/partner/__init__.py

go:
	@$(MAKE) -C $(CurrentDir)/mercury go
