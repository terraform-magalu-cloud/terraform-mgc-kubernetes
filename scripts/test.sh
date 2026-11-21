#!/usr/bin/env bash
set -euo pipefail

echo "==============================================="
echo " Running Terraform Test Suite for MGC K8s"
echo "==============================================="

# Check if terraform or tofu is available
TF_BIN=""
if command -v terraform &>/dev/null; then
  TF_BIN="terraform"
elif command -v tofu &>/dev/null; then
  TF_BIN="tofu"
elif [[ -x "/home/antonio/.tfenv/bin/terraform" ]]; then
  TF_BIN="/home/antonio/.tfenv/bin/terraform"
else
  echo "Error: Neither 'terraform' nor 'tofu' binary was found in PATH." >&2
  exit 1
fi

echo "Using binary: $($TF_BIN version -json 2>/dev/null | grep -o '"terraform_version":"[^"]*' || $TF_BIN -version | head -n 1)"

# Format check
echo "==> Running format check..."
$TF_BIN fmt -check -recursive

# Validate root module
echo "==> Validating module syntax..."
$TF_BIN init -backend=false
$TF_BIN validate

# Run native test suite
echo "==> Running native Terraform tests..."
$TF_BIN test -verbose

echo "==============================================="
echo " All tests passed successfully!"
echo "==============================================="
