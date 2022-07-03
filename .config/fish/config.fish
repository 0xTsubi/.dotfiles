# Fish syntax highlighting
set -g fish_color_autosuggestion '555'  'brblack'
set -g fish_color_cancel -r
set -g fish_color_command --bold
set -g fish_color_comment red
set -g fish_color_cwd green
set -g fish_color_cwd_root red
set -g fish_color_end brmagenta
set -g fish_color_error brred
set -g fish_color_escape 'bryellow'  '--bold'
set -g fish_color_history_current --bold
set -g fish_color_host normal
set -g fish_color_match --background=brblue
set -g fish_color_normal normal
set -g fish_color_operator bryellow
set -g fish_color_param cyan
set -g fish_color_quote yellow
set -g fish_color_redirection brblue
set -g fish_color_search_match 'bryellow'  '--background=brblack'
set -g fish_color_selection 'white'  '--bold'  '--background=brblack'
set -g fish_color_user brgreen
set -g fish_color_valid_path --underlinestock

# Path Variables
set PATH $HOME/.cargo/bin:$PATH
set PATH $HOME/node/goal:$PATH
set GOPATH $HOME/go/
set GOBIN $GOPATH/bin
set PATH $PATH:$GOBIN
set -x ALGORAND_DATA $HOME/node/data
set PATH $HOME/node:$PATH
set PATH $HOME/algorand/sandbox:$PATH
set PATH $HOME/helium:$PATH

# Aliases
alias k="kubectl"
alias p="pnpm"
alias px="pnpx"
alias ls="ls --color=auto"
alias la="ls -A"
alias l="ls -CF"
alias grep="grep --color=auto"
alias gs="git status"
alias mv="mv -i"
alias rm="rm -i"
alias ll="ls -alF"
alias g="git"
alias vim=nvim
alias config="/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME"

# Install Starship
starship init fish | source

function nvm
   bass source (brew --prefix nvm)/nvm.sh --no-use ';' nvm $argv
end

set -x NVM_DIR ~/.nvm
nvm use default --silent

# ghcup-env
set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME
test -f /Users/dominichawton/.ghcup/env ; and set -gx PATH $HOME/.cabal/bin /Users/dominichawton/.ghcup/bin $PATH
set -gx VOLTA_HOME "$HOME/.volta"
set -gx PATH "$VOLTA_HOME/bin" $PATH

export PATH="$PATH:/Users/dominichawton/.foundry/bin"

# pnpm
set -gx PNPM_HOME "/Users/dominichawton/Library/pnpm"
set -gx PATH "$PNPM_HOME" $PATH
# pnpm end
