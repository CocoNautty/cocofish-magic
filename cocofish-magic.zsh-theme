# modified from: af-magic.zsh-theme
#
# Author: CocoFish

function precmd_conda_info(){
  local python_env_dir="${VIRTUAL_ENV:-$CONDA_DEFAULT_ENV}"
  local python_env="(${python_env_dir##*/})"
  if [ ! -z "$python_env"] ];
  then
    echo $python_env
  else
    echo ""
  fi
}

function dashes(){
  local python_env_dir="${VIRTUAL_ENV:-$CONDA_DEFAULT_ENV}"
  local python_env="(${python_env_dir##*/})"
  echo $(( COLUMNS - ${#python_env} - 70 ))
}

# primary prompt: dashed separator, directory and vcs info
PROMPT="${FG[123]}\${\$(precmd_conda_info)}%f%{$reset_color%} %{$FG[250]%}\${(l.\$(dashes)..-.)}%{$reset_color%} ${FG[195]}%n@%m%{$reset_color%} %B%F{blue}:: %(?..%{$fg[red]%}%?↵%{$reset_color%})
%{$fg_bold[cyan]%}%~\$(git_prompt_info)\$(hg_prompt_info) ${FG[105]}%(!.#.»)%{$reset_color%} "
PS2="%{$fg[red]%}\ %{$reset_color%}"

# git settings
ZSH_THEME_GIT_PROMPT_PREFIX=" ${FG[075]}(${FG[078]}"
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_DIRTY="${FG[214]}*%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="${FG[075]})%{$reset_color%}"

# hg settings
ZSH_THEME_HG_PROMPT_PREFIX=" ${FG[075]}(${FG[078]}"
ZSH_THEME_HG_PROMPT_CLEAN=""
ZSH_THEME_HG_PROMPT_DIRTY="${FG[214]}*%{$reset_color%}"
ZSH_THEME_HG_PROMPT_SUFFIX="${FG[075]})%{$reset_color%}"

# virtualenv settings
ZSH_THEME_VIRTUALENV_PREFIX=" ${FG[075]}["
ZSH_THEME_VIRTUALENV_SUFFIX="]%{$reset_color%}"
