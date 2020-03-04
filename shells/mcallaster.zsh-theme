#################
### OVERRIDES ###
#################

if [ ! -n "${MCALLASTER_PROMPT_CHAR+1}" ]; then
  MCALLASTER_PROMPT_CHAR='$'
fi

##############
### PROMPT ###
##############

local current_prompt_char="${MCALLASTER_PROMPT_CHAR}"

local prompt_dir='%{$terminfo[bold]$fg[blue]%}%~ %{$reset_color%}'
local prompt_git='$(git_prompt_info)'
local prompt_char='${current_prompt_char}'

local prompt_top="╭─ ${prompt_dir} ${prompt_git}"
local prompt_bottom="
╰─ ${prompt_char}%{$reset_color%} "

local prompt_error="%{$fg[red]%}${prompt_top}%{$fg[red]%}${prompt_bottom}"
local prompt_normal="%{$fg[green]%}${prompt_top}%{$fg[green]%}${prompt_bottom}"

PROMPT="%(?:${prompt_normal}:${prompt_error})"

###########
### GIT ###
###########

ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[yellow]%} ✗"
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_PREFIX="%{$reset_color%}‹"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}›"

#########################
### VI MODE INDICATOR ###
#########################

function zle-line-init zle-keymap-select zle-line-finish {
  case ${KEYMAP} in
    (vicmd) current_prompt_char="N" ;;
    (*)     current_prompt_char="${MCALLASTER_PROMPT_CHAR}" ;;
  esac
  zle reset-prompt
}

zle -N zle-line-init
zle -N zle-keymap-select
zle -N zle-line-finish
