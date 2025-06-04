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
alias cls="clear"
alias v="nvim"
alias sz="source ~/.zshrc"
alias ez="nvim ~/.zshrc"

alias cob="conda activate base"
alias cel="conda env list"
alias cor="conda activate rlgpu"
alias cod="conda deactivate"
alias ubu="sudo chroot ./chroot-ubuntu /bin/bash"


export PATH=$PATH:"$HOME/Downloads/zig/"

# --- Oh-my-posh Setup ---
export PATH="$PATH:$HOME/.local/bin"
# eval "$(oh-my-posh init zsh --config ~/.config/nvim/temp/omp_themes/atomic.omp.json)"
# eval "$(oh-my-posh init zsh --config ~/.config/nvim/temp/omp_themes/negligible.omp.json)"
# eval "$(oh-my-posh init zsh --config ~/.config/nvim/temp/omp_themes/kali.omp.json)"
# eval "$(oh-my-posh init zsh --config ~/.config/nvim/temp/omp_themes/multiverse-neon.omp.json)"
# eval "$(oh-my-posh init zsh --config ~/.config/nvim/temp/omp_themes/hunk.omp.json)"
# eval "$(oh-my-posh init zsh --config ~/.config/nvim/temp/omp_themes/huvix.omp.json)"
eval "$(oh-my-posh init zsh --config ~/.config/nvim/temp/omp_themes/nordtron.omp.json)"
# eval "$(oh-my-posh init zsh --config ~/.config/nvim/temp/omp_themes/darkblood.omp.json)"
# eval "$(oh-my-posh init zsh --config ~/.config/nvim/temp/omp_themes/emodipt-extend.omp.json)"
# eval "$(oh-my-posh init zsh --config ~/.config/nvim/temp/omp_themes/powerlevel10k_classic.omp.json)"
