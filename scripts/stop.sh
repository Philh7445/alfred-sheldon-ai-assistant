#!/bin/bash

# Legacy Alfred V1 shutdown script.
# Preserved for historical/operational continuity until the live Tron runtime is audited.
# Functional behavior is intentionally unchanged.

echo "Stopping Alfred V1 legacy runtime..."

# Stop original Telegram bot process
echo "Stopping bot..."
pkill -f "bot.py"

# Stop Ollama
echo "Stopping Ollama..."
pkill -f "ollama"

echo "Alfred V1 runtime stopped."
