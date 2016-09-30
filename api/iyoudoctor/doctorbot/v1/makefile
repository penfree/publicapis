#encoding=utf8
#
# 	Copyright 2016 北京大数医达科技有限公司
#

.PHONY: python go

CurrentDir := $(RootWorkDir)/api/iyoudoctor/doctorbot/v1

python:
	@# Ensure the directory
	mkdir -p $(PythonGenPath)/iyoudoctor/doctorbot/v1
	@# Run sub modules
	@$(MAKE) -C $(CurrentDir)/knowledge python
	@$(MAKE) -C $(CurrentDir)/analyze python
	@#Create the __init__.py
	touch $(PythonGenPath)/iyoudoctor/doctorbot/v1/__init__.py

go:
	@$(MAKE) -C $(CurrentDir)/knowledge go
	@$(MAKE) -C $(CurrentDir)/analyze go
