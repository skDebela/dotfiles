# Use colors in coreutils utilities output
alias ls='ls --color=auto'
alias grep='grep --color=auto'

# ls aliases
alias ll='ls -lah'
alias la='ls -A'
alias l='ls'

# Alias to protect overwriting
alias cp='cp -i'
alias mv='mv -i'

# cd to git root directory
alias cdgr='cd "$(git rev-parse --show-toplevel)"'

# vim
alias vim=nvim

# python
alias pipfn="pip3 freeze | cut -d'=' -f1"
alias p=python
alias pm="python manage.py"
alias rf="ruff format"
alias rc="ruff check"
alias rcf="ruff check --fix"
alias rfcf="ruff format & ruff check --fix"

# docker
alias d=docker
alias dc="docker compose"
alias dcd="docker compose down"
alias dcdev="docker compose -f docker-compose.dev.yml"
alias dcu="docker compose up"

# Create a directory and cd into it
mcd() {
  mkdir -p "${1}" && cd "${1}"
}

# Jump to directory containing file
jump() {
  cd "$(dirname ${1})"
}

# Local aliases
if [ -f ~/.shell/local_aliases.sh ]; then
  source ~/.shell/local_aliases.sh
fi
