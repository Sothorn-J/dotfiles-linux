# keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=1000

# add path

# typing thai in GEMINI CLI
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# case insensitive completion
autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

# load plugins
source ~/.local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# add aliases
alias ll="eza --icons -alh"
alias ls="eza --icons"
alias python="python3"
alias pip="pip3"

# docker to podman
export DOCKER_HOST=unix:///run/user/$(id -u)/podman/podman.sock

# starship
eval "$(starship init zsh)"

# homebrew
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv zsh)"

# mise
eval "$(mise activate zsh)"
