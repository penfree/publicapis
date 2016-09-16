#encoding=utf8
#
# 	Copyright 2016 北京大数医达科技有限公司
#

.PHONY: python go 

CurrentDir := $(RootWorkDir)/api/iyoudoctor

python:
	@# Ensure the directory
	mkdir -p $(PythonGenPath)/iyoudoctor
	@# Run sub modules
	@$(MAKE) -C $(CurrentDir)/doctorbot python
	@#Create the __init__.py
	touch $(PythonGenPath)/iyoudoctor/__init__.py 

go:
	@$(MAKE) -C $(CurrentDir)/doctorbot go

