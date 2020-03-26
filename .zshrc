export ZSH=$HOME/.oh-my-zsh


plugins=(
  themes
  yarn
  chucknorris
  bgnotify
  osx
  zsh-autosuggestions
  git
  ruby
  colorize
  emoji
  git-flow
)

export CODESTATS_API_KEY="YOUR_CODE::STATS_KEY"

source $ZSH/oh-my-zsh.sh
source $HOME/zsh-codestats/codestats.zsh

eval "$(rbenv init -)"

function ruby_use {
  rbenv shell $1 && rbenv global $1 > /dev/null
}

ruby_use 2.6.3

function ls_sort {
  ls -l $1 | rev | sort | rev
}

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
fi


export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"

autoload -U add-zsh-hook

load-nvmrc() {
  local node_version="$(nvm version)"
  local nvmrc_path="$(nvm_find_nvmrc)"

  if [ -n "$nvmrc_path" ]; then
    local nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")

    if [ "$nvmrc_node_version" = "N/A" ]; then
      nvm install
    elif [ "$nvmrc_node_version" != "$node_version" ]; then
      nvm use
    fi
  elif [ "$node_version" != "$(nvm version default)" ]; then
    echo "Reverting to nvm default version"
    nvm use default
  fi
}

SPACESHIP_PROMPT_ORDER=(
  time          # Time stamps section
  user          # Username section
  dir           # Current directory section
  host          # Hostname section
  git           # Git section (git_branch + git_status)
  package       # Package version
  node          # Node.js section
  ruby          # Ruby section
  elixir        # Elixir section
  xcode         # Xcode section
  julia         # Julia section
  docker        # Docker section
  exec_time     # Execution time
  line_sep      # Line break
  battery       # Battery level and status
  vi_mode       # Vi-mode indicator
  jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
)


add-zsh-hook chpwd load-nvmrc

load-nvmrc

alias pidgin="nohup pidgin > /dev/null &; disown %1"
alias code.="code ."
alias lg="lazygit"
alias cat="ccat"
alias less="cless"

export PATH="$HOME/bin:$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:/usr/local/opt/openssl@1.1/bin:/Applications/Visual Studio Code.app/Contents/Resources/app/bin:$PATH"

chuck_cow | lolcat
export ARCHFLAGS=-Wno-error=unused-command-line-argument-hard-error-in-future
export CAROOT=$HOME/.mkcert

# Set Spaceship ZSH as a prompt
autoload -U promptinit; promptinit
prompt spaceship

