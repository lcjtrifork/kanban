#!/bin/bash

plugins=(
  "github-cli"
  "packer"
  "terraform"
  "awscli"
  "elixir"
  "erlang"
  "postgres"
  "jq"
  "age"
  "sops"
)

for plugin in "${plugins[@]}"; do
  echo "Adding plugin: $plugin"
  mise plugins install "$plugin" || true
done

echo "Installation complete"
echo "Please restart your terminal or source your profile file."