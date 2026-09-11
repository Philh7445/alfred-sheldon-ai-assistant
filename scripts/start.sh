#!/bin/bash

# Legacy Alfred V1 startup script.
# Preserved because it reflects the working prototype that preceded Sheldon V2.
# Functional behavior is intentionally unchanged until the live Tron runtime is audited.

echo "Starting Alfred V1 legacy runtime..."

# Start Ollama if not already running
if pgrep -x "ollama" > /dev/null
then
    echo "Ollama is already running."
else
    echo "Starting Ollama..."
    ollama serve &
    sleep 5
fi

# Move to bot folder used by the original Alfred installation
cd ~/Desktop/clawdbot || {
    echo "Error: clawdbot folder not found."
    exit 1
}

# Activate virtual environment
source .venv/bin/activate

# Start original Telegram bot
echo "Starting Alfred Telegram bot..."
python bot.py
