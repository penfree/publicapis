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
	@$(MAKE) -C $(CurrentDir)/internals python
	@$(MAKE) -C $(CurrentDir)/doctorbot python
	@$(MAKE) -C $(CurrentDir)/oauth2 python
	@$(MAKE) -C $(CurrentDir)/iam python
	@$(MAKE) -C $(CurrentDir)/user python
	@$(MAKE) -C $(CurrentDir)/partner python
	@$(MAKE) -C $(CurrentDir)/hospuser python
	@$(MAKE) -C $(CurrentDir)/monitor python
	@#Create the __init__.py
	touch $(PythonGenPath)/iyoudoctor/__init__.py

go:
	@$(MAKE) -C $(CurrentDir)/internals go
	@$(MAKE) -C $(CurrentDir)/doctorbot go
	@$(MAKE) -C $(CurrentDir)/oauth2 go
	@$(MAKE) -C $(CurrentDir)/user go
	@$(MAKE) -C $(CurrentDir)/iam go
	@$(MAKE) -C $(CurrentDir)/partner go
	@$(MAKE) -C $(CurrentDir)/hospuser go
	@$(MAKE) -C $(CurrentDir)/monitor go
