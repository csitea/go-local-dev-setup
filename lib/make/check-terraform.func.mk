# usage: include it in your Makefile by:
# include lib/make/make-help.task

# TODO-ensure that
ifdef $(shell which terraform)
	TERRAFORM_VERSION := $(shell terraform --version | head -n1 | tr -d 'Terraform v')
	TERRAFORM_REQUIRED_VERSION := "1.0.1"
endif


