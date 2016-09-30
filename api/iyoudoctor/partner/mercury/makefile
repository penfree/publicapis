#encoding=utf8
#
# 	Copyright 2016 北京大数医达科技有限公司
#

.PHONY: python go

CurrentDir := $(RootWorkDir)/api/iyoudoctor/partner/mercury

python:
	@# Ensure the directory
	mkdir -p $(PythonGenPath)/iyoudoctor/partner/mercury
	@# Run sub modules
	@$(MAKE) -C $(CurrentDir)/drug python
	@#Create the __init__.py
	touch $(PythonGenPath)/iyoudoctor/partner/mercury/__init__.py

go:
	@$(MAKE) -C $(CurrentDir)/drug go
