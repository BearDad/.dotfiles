#if status is-interactive
#and not set -q TMUX
# exec tmux
#end
if status is-interactive
    #exported paths

    export EDITOR=nvim
    export BAT_THEME='Catppuccin Mocha'
    export PATH="$PATH:$HOME/.cargo/bin"
    # alias vim="nvim"
end
if status is-interactive
    set -g fish_greeting
    fish_add_path /usr/bin/bat
end
# setup homebrew alias 
if status is-interactive
    test -d ~/.linuxbrew && eval "$(~/.linuxbrew/bin/brew shellenv)"
    test -d /home/linuxbrew/.linuxbrew && eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
    echo "eval \"\$($(brew --prefix)/bin/brew shellenv)\"" >>~/.bashrc
    zoxide init fish | source
    alias cd="z"
    alias cdi="zi"
    alias fetch="pokeget random --shiny --hide-name | fastfetch --file-raw -"
    alias t="tmux"
    alias td="tmux detach"
    alias py="python3"
    alias python="python3"
    alias cat="batcat"
    alias c="clear"
    alias ls="exa"
    alias ll="exa -l"
    alias lla="exa -la"
    alias v="nvim"
    alias gp="git push"
    alias gpf="git push --force-with-lease"
    alias gpl="git pull"
    alias gc="git checkout"
    alias gcl="git clone"
    alias gca="git commit -a"
    alias vim="nvim"
    alias bat="batcat"
    alias ffetch="fastfetch --config ascii-art"
    oh-my-posh init fish --config '~/catppucin.omp.json' | source
end
