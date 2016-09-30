#encoding=utf8
#
# 	Copyright 2016 北京大数医达科技有限公司
#

.PHONY: python go

CurrentDir := $(RootWorkDir)/api/iyoudoctor/user/v1

python:
	@# Ensure the directory
	mkdir -p $(PythonGenPath)/iyoudoctor/user/v1/member
	@# Run sub modules
	@$(MAKE) -C $(CurrentDir)/member python
	@$(MAKE) -C $(CurrentDir)/mr python
	@#Create the __init__.py
	touch $(PythonGenPath)/iyoudoctor/user/v1/member/__init__.py

go:
	@$(MAKE) -C $(CurrentDir)/member go
	@$(MAKE) -C $(CurrentDir)/mr go
