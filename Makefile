export PATH := $(HOME)/.tfenv/bin:$(PATH)

.PHONY: all test fmt validate docs help

all: test

help:
	@echo "Available commands:"
	@echo "  make test      - Run native Terraform test suite"
	@echo "  make fmt       - Format Terraform code"
	@echo "  make validate  - Validate Terraform syntax"
	@echo "  make docs      - Regenerate README with terraform-docs"

test:
	@chmod +x scripts/test.sh
	@./scripts/test.sh

fmt:
	terraform fmt -recursive

validate:
	terraform init -backend=false
	terraform validate

docs:
	terraform-docs markdown table --output-file README.md .
	terraform-docs markdown table --output-file README.md examples/simple
	terraform-docs markdown table --output-file README.md examples/advanced
