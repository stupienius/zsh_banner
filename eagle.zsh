# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export PATH="$HOME/.cargo/bin:$PATH"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="agnoster"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"
# COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

export MANPATH="~/code"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='nvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch $(uname -m)"

# Set personal aliases, overriding those provided by Oh My Zsh libs,
# plugins, and themes. Aliases can be placed here, though Oh My Zsh
# users are encouraged to define aliases within a top-level file in
# the $ZSH_CUSTOM folder, with .zsh extension. Examples:
# - $ZSH_CUSTOM/aliases.zsh
# - $ZSH_CUSTOM/macos.zsh
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#
export PATH="$HOME/.local/bin/":$PATH

# Function to display fortune within the lighthouse art
show_fortune_in_lighthouse() {
  local fortune_text=$(fortune)
  local whoami=$(whoami)

  local cleaned_text=$(echo "$fortune_text" | tr -d '\t' | sed 's/ *$//')
  local fortune_lines=(${(f)cleaned_text})  # Split into array by lines

  local line_count=${#fortune_lines[@]}
  local max_lines=8
  while [ ${#fortune_lines[@]} -lt $max_lines ]; do
    fortune_lines+=("                                                                                     ")
  done

  fortune_lines=("${fortune_lines[@]:0:8}")

    printf "                                                              __..-'\n"
    printf "                                                        _.--''\n"
    printf "                                              _...__..-'\n"
    printf "                                            .'\n"
    printf "                                          .'\n"
    printf "                                        .'\n"
    printf "                                      .'    | welcome %s\n" "${whoami}"
    printf "           .------._                 ;      |--------------------------------------------------------------------------------------|\n"
    printf "     .-\"\"\"\`-.<')    \`-._           .'       | %-85s|\n" "${fortune_lines[0]:0:85}"
    printf "    (.--. _   \`._       \`'---.__.-'         | %-85s|\n" "${fortune_lines[1]:0:85}"
    printf "     \`   \`;'-.-'         '-    ._           | %-85s|\n" "${fortune_lines[2]:0:85}"
    printf "       .--'\`  '._      - '   .              | %-85s|\n" "${fortune_lines[3]:0:85}"
    printf "        \`\"\"'-.    \`---'    ,                | %-85s|\n" "${fortune_lines[4]:0:85}"
    printf "''--..__      \`\\                            | %-85s|\n" "${fortune_lines[5]:0:85}"
    printf "        \`''---'\`\\      .'                   | %-85s|\n" "${fortune_lines[6]:0:85}"
    printf "                  \`'. '                     | %-85s|\n" "${fortune_lines[7]:0:85}"
    printf "                    \`'.                     |--------------------------------------------------------------------------------------|\n"


}

# Display welcome message and fortune in lighthouse
echo ""
show_fortune_in_lighthouse | lolcat
echo ""
