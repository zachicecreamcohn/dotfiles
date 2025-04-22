# This file holds all my custom aliases not prescribed by a plugin
alias bad-llama="ollama run rolandroland/llama3.1-uncensored"
alias nv='nvim'
alias jot="nvim ~/Documents/brain/Random Fleeting Thoughts.md"
alias oil0='cd ~ && cd "$(nvr --remote-expr '\''getcwd(0)'\'' )"'
alias oil1='cd ~ && cd "$(nvr --remote-expr '\''getcwd(1)'\'' )"'
alias oil2='cd ~ && cd "$(nvr --remote-expr '\''getcwd(2)'\'' )"'
alias deep-search='curl -LsSf https://astral.sh/uv/install.sh | sh && uvx --refresh --from "langgraph-cli[inmem]" --with-editable . --python 3.11 langgraph dev'
alias py='python3'
