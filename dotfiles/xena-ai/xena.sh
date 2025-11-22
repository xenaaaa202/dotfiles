#!/usr/bin/env bash
# XENA CLI v3.3 — Bash version with persistent chat logs and Ollama cleanup

# --------------------------
# Colors (soft gruvbox)
COLOR_USER="\033[38;5;223m"    # soft yellow
COLOR_AI="\033[38;5;109m"      # soft green
COLOR_RESET="\033[0m"

# --------------------------
# Model selection menu
OPTIONS=("general chat" "fast" "study" "coding" "reasoning")
CHOICE=$(gum choose "${OPTIONS[@]}")  # menu without "Choose:" prefix

# --------------------------
# Assign model and log directory
case "$CHOICE" in
    "general chat")
        MODELS=("tinydolphin:1.1b" "falcon3:1b" "smollm2:1.7b")
        MODEL=${MODELS[$RANDOM % ${#MODELS[@]}]}
        LOG_DIR="/home/xena/ai/general/${MODEL%%:*}"
        ;;
    "fast")
        MODEL="tinyllama:latest"
        LOG_DIR="/home/xena/ai/fast/tinyllama"
        ;;
    "study")
        MODELS=("qwen2.5:1.5b" "stablelm-zephyr:3b")
        MODEL=${MODELS[$RANDOM % ${#MODELS[@]}]}
        LOG_DIR="/home/xena/ai/study/${MODEL%%:*}"
        ;;
    "coding")
        MODEL="deepcoder:1.5b"
        LOG_DIR="/home/xena/ai/coding/deepcoder"
        ;;
    "reasoning")
        MODEL="deepscaler:1.5b"
        LOG_DIR="/home/xena/ai/reasoning/deepscaler"
        ;;
esac

# --------------------------
# Ensure log directory exists
mkdir -p "$LOG_DIR"
LOG_FILE="$LOG_DIR/chat.log"

# --------------------------
# Start Ollama server silently
ollama serve >/dev/null 2>&1 &
sleep 1

# --------------------------
# Chat header
echo ""
echo -e "${COLOR_AI}Chatting with model: $MODEL${COLOR_RESET}"
echo -e "${COLOR_AI}Press Ctrl+D to exit.${COLOR_RESET}"
echo ""

# --------------------------
# Persistent chat loop
while true; do
    # User input
    printf "${COLOR_USER}~ ${COLOR_RESET}"
    if ! read USER_INPUT; then
        echo -e "\nExiting..."
        killall ollama >/dev/null 2>&1
        exit 0
    fi

    # Append user input to log
    echo -e "USER: $USER_INPUT" >> "$LOG_FILE"

    # Run model silently (no GIN logs)
    RESPONSE=$(OLLAMA_NO_ADC=true ollama run "$MODEL" "$USER_INPUT" 2>/dev/null)

    # Print AI response
    echo -e "${COLOR_AI}$RESPONSE${COLOR_RESET}\n"

    # Append AI response to log
    echo -e "AI: $RESPONSE\n" >> "$LOG_FILE"
done
