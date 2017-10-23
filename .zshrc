#          __                                     __
#   ____  / /_     ____ ___  __  __   ____  _____/ /_
#  / __ \/ __ \   / __ `__ \/ / / /  /_  / / ___/ __ \
# / /_/ / / / /  / / / / / / /_/ /    / /_(__  ) / / /
# \____/_/ /_/  /_/ /_/ /_/\__, /    /___/____/_/ /_/
#                         /____/
#
# Author: Chris Meek
# Repo: https://github.com/cmeekuk/dotfiles/
#

##### oh-my-zsh configurations #####

export ZSH=/Users/chrismeek/.oh-my-zsh


ZSH_THEME="robbyrussell"

plugins=(git brew zsh-syntax-highlighting docker node npm pip redis-cli sudo tmux)

source $ZSH/oh-my-zsh.sh

##### plugin configurations #####

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

source ~/Tools/z/z.sh

