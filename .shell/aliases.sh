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
# alias dcdev="docker compose -f docker-compose.dev.yml"
alias dcu="docker compose up"

dcdev() {
    local file=""
    if [[ -f "docker-compose.dev.yml" ]]; then
        file="docker-compose.dev.yml"
    elif [[ -f "docker-compose.dev.yaml" ]]; then
        file="docker-compose.dev.yaml"
    elif [[ -f "docker-compose.development.yml" ]]; then
        file="docker-compose.development.yml"
    elif [[ -f "docker-compose.development.yaml" ]]; then
        file="docker-compose.development.yaml"
    else
        echo "Error: Neither docker-compose.dev.yml nor docker-compose.development.yml found." >&2
        return 1
    fi

    docker compose -f "$file" "$@"
}

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
