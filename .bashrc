alias ls='eza'
alias ll='eza -lBo'
alias la='eza -lABo'
alias lt='eza -lABor -s=modified'

alias jql='cat $1 | gojq -C "." | less -r'

alias venvinit='python3 -m venv .venv --prompt "\\e[33m`pwd | rev | cut -d / -f 1 | rev`\\e[0m" && . .venv/bin/activate; python3 -m pip install --upgrade pip'
alias pipr='python3 -m pip install -r requirements.txt'
alias vnv='. .venv/bin/activate'

eval "$(starship init bash)"
