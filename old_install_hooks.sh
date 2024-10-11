#!/bin/bash
set -e

ROOT_DIR=$(git rev-parse --show-toplevel)
HOOKS_DIR="$ROOT_DIR/.git/hooks"
SCRIPTS_DIR="$ROOT_DIR/.scripts"

##echo "Installing pre-commit hook..."
##cp "$SCRIPTS_DIR/pre-commit" "$HOOKS_DIR/pre-commit"
##chmod +x "$HOOKS_DIR/pre-commit"

echo "Installing pre-push hook..."
cp "$SCRIPTS_DIR/pre-push" "$HOOKS_DIR/pre-push"
chmod +x "$HOOKS_DIR/pre-push"

echo "Hooks installed successfully"
