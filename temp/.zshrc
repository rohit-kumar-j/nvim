# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt autocd beep notify
bindkey -v
# End of lines configured by zsh-newuser-install

# The following lines were added by compinstall
zstyle :compinstall filename '/home/dlar6/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall


plugins=(git
	 zsh-syntax-highlighting
	 zsh-autosuggestions
	 extract
	 wd
	 fzf
	 sudo
	)


# zsh options

  # "If a completion is performed with the cursor within a word, and a
  # full completion is inserted, the cursor is moved to the end of the
  # word."
  # https://zsh.sourceforge.io/Doc/Release/Options.html#Completion-4
  setopt always_to_end


  # "If a command is issued that can’t be executed as a normal command,
  # and the command is the name of a directory, perform the cd command
  # to that directory."
  # https://zsh.sourceforge.io/Doc/Release/Options.html#Changing-Directories
  #
  # That is, enter a path to cd to it
  setopt auto_cd


  # "Automatically use menu completion after the second consecutive
  # request for completion, for example by pressing the tab key
  # repeatedly. This option is overridden by MENU_COMPLETE."
  # https://zsh.sourceforge.io/Doc/Release/Options.html#Completion-4
  setopt auto_menu


  # "Make cd push the old directory onto the directory stack."
  # https://zsh.sourceforge.io/Doc/Release/Options.html#Changing-Directories
  setopt auto_pushd


  # "If unset, the cursor is set to the end of the word if completion is
  # started. Otherwise it stays there and completion is done from both
  # ends."
  # https://zsh.sourceforge.io/Doc/Release/Options.html#Completion-4
  setopt complete_in_word


  # "If the internal history needs to be trimmed to add the current
  # command line, setting this option will cause the oldest history
  # event that has a duplicate to be lost before losing a unique event
  # from the list."
  # https://zsh.sourceforge.io/Doc/Release/Options.html#History
  setopt hist_expire_dups_first


  # "When searching for history entries in the line editor, do not
  # display duplicates of a line previously found, even if the
  # duplicates are not contiguous."
  # https://zsh.sourceforge.io/Doc/Release/Options.html#History
  setopt hist_find_no_dups

  # "Remove command lines from the history list when the first character
  # on the line is a space, or when one of the expanded aliases contains
  # a leading space. Only normal aliases (not global or suffix aliases)
  # have this behaviour. Note that the command lingers in the internal
  # history until the next command is entered before it vanishes,
  # allowing you to briefly reuse or edit the line. If you want to make
  # it vanish right away without entering another command, type a space
  # and press return."
  # https://zsh.sourceforge.io/Doc/Release/Options.html#History
  setopt hist_ignore_space


  # "Turns on interactive comments; comments begin with a #."
  # https://zsh.sourceforge.io/Intro/intro_16.html
  #
  # That is, enable comments in the terminal. Nice when copying and
  # pasting from documentation/tutorials, and disable part of
  # a command pulled up from history.
  setopt interactivecomments


  # "If this option is unset, output flow control via start/stop
  # characters (usually assigned to ^S/^Q) is disabled in the shell’s
  # editor."
  # https://zsh.sourceforge.io/Doc/Release/Options.html#Input_002fOutput
  unsetopt flow_control


  # "Beep on an ambiguous completion. More accurately, this forces the
  # completion widgets to return status 1 on an ambiguous completion,
  # which causes the shell to beep if the option BEEP is also set; this
  # may be modified if completion is called from a user-defined widget."
  # https://zsh.sourceforge.io/Doc/Release/Options.html#Completion-4
  unsetopt list_beep


  # "On an ambiguous completion, instead of listing possibilities or
  # beeping, insert the first match immediately. … This option overrides AUTO_MENU."
  # https://zsh.sourceforge.io/Doc/Release/Options.html#Completion-4
  #
  # Unset to unblock auto_menu
  unsetopt menu_complete


  # "If set, parameter expansion, command substitution and arithmetic
  # expansion are performed in prompts. Substitutions within prompts do
  # not affect the command status."
  # https://zsh.sourceforge.io/Doc/Release/Options.html#Prompting
  setopt prompt_subst


  # "Exchanges the meanings of ‘+’ and ‘-’ when used with a number to
  # specify a directory in the stack."
  # https://zsh.sourceforge.io/Doc/Release/Options.html#Changing-Directories
  #
  # `cd -3` goes back three directories in the cd stack. I do this because
  # `cd -<n>` matches `git checkout @{-<n>}` better than `cd +<n>` does.
  setopt pushd_minus

  # "This option both imports new commands from the history file, and
  # also causes your typed commands to be appended to the history file
  # (the latter is like specifying INC_APPEND_HISTORY, which should be
  # turned off if this option is in effect). The history lines are also
  # output with timestamps ala EXTENDED_HISTORY (which makes it easier
  # to find the spot where we left off reading the file after it gets
  # re-written)."
  # https://zsh.sourceforge.io/Doc/Release/Options.html#History

  setopt share_history


# # >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/dlar6/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/dlar6/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/dlar6/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/dlar6/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# sudo mv $CONDA_PREFIX/bin/clear $CONDA_PREFIX/bin/clear_old
export TERMINFO="/usr/share/terminfo"
# <<< conda initialize <<<

. "$HOME/.cargo/env"
export MANPAGER="nvim +Man!"
export EDITOR="nvim"
alias cls="clear"
alias v="nvim"
alias sz="source ~/.zshrc"
alias ez="nvim ~/.zshrc"

alias cob="conda activate base"
alias cel="conda env list"
alias cor="conda activate rlgpu"
alias cod="conda deactivate"
alias ubu="sudo chroot /srv/chroot/ubuntu-20.04-arm64 /bin/bash"

source <(fzf --zsh)


export PATH=$PATH:"$HOME/Downloads/zig/"
export XDG_CONFIG_HOME=~/.config

# --- Oh-my-posh Setup ---
export PATH="$PATH:$HOME/.local/bin"
# eval "$(oh-my-posh init zsh --config ~/.config/nvim/temp/omp_themes/atomic.omp.json)"
# eval "$(oh-my-posh init zsh --config ~/.config/nvim/temp/omp_themes/negligible.omp.json)"
# eval "$(oh-my-posh init zsh --config ~/.config/nvim/temp/omp_themes/kali.omp.json)"
# eval "$(oh-my-posh init zsh --config ~/.config/nvim/temp/omp_themes/multiverse-neon.omp.json)"
# eval "$(oh-my-posh init zsh --config ~/.config/nvim/temp/omp_themes/hunk.omp.json)"
# eval "$(oh-my-posh init zsh --config ~/.config/nvim/temp/omp_themes/huvix.omp.json)"
# eval "$(oh-my-posh init zsh --config ~/.config/nvim/temp/omp_themes/nordtron.omp.json)"
# eval "$(oh-my-posh init zsh --config ~/.config/nvim/temp/omp_themes/darkblood.omp.json)"
# eval "$(oh-my-posh init zsh --config ~/.config/nvim/temp/omp_themes/emodipt-extend.omp.json)"
# eval "$(oh-my-posh init zsh --config ~/.config/nvim/temp/omp_themes/powerlevel10k_classic.omp.json)"
