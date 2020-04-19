#!/usr/bin/env zsh
#~/.oh_my_zsh/themes/jangui2.zsh-theme 

# adapted from nicoulaj theme

# ------------------------------------------------------------------------------
# Prompt for the Zsh shell:
#   * One line.
#   * VCS info on the right prompt.
#   * Only shows the path on the left prompt by default.
#   * Crops the path to a defined length and only shows the path relative to
#     the current VCS repository root.
#   * Wears a different color wether the last command succeeded/failed.
#   * option to show Shows user@hostname only if connected through SSH or na
#   * Shows if logged in as root or not.
# ------------------------------------------------------------------------------

# Customizable parameters.
PROMPT_PATH_MAX_LENGTH=30
#PROMPT_DEFAULT_END=❯
#PROMPT_ROOT_END=❯❯❯
#PROMPT_DEFAULT_END=" ><>"
PROMPT_DEFAULT_END=" :>"
PROMPT_ROOT_END=">>"
PROMPT_SUCCESS_COLOR=$FG[071]
PROMPT_FAILURE_COLOR=$FG[124]
PROMPT_VCS_INFO_COLOR=$FG[242]
NAME_COLOR=$fg_bold[magenta]
AT_COLOR=$fg_bold[green]
HOSTNAME_BRACKET=$fg_bold[blue]

# Set required options.
setopt promptsubst

# Load required modules.
autoload -U add-zsh-hook
autoload -Uz vcs_info

# Add hook for calling vcs_info before each command.
add-zsh-hook precmd vcs_info

# Set vcs_info parameters.
zstyle ':vcs_info:*' enable hg bzr git
zstyle ':vcs_info:*:*' check-for-changes true # Can be slow on big repos.
zstyle ':vcs_info:*:*' unstagedstr '!'
zstyle ':vcs_info:*:*' stagedstr '+'
zstyle ':vcs_info:*:*' actionformats "%S" "%r/%s/%b %u%c (%a)"
zstyle ':vcs_info:*:*' formats "%S" "%r/%s/%b %u%c"
zstyle ':vcs_info:*:*' nvcsformats "%~" ""

# Define prompts.
PROMPT="%{$HOSTNAME_BRACKET%}[%{$NAME_COLOR%}%n%{$AT_COLOR%}@%{$NAME_COLOR%}%m%{$HOSTNAME_BRACKET%}] %(0?.%{$PROMPT_SUCCESS_COLOR%}.%{$PROMPT_FAILURE_COLOR%})%{$FX[bold]%}%$PROMPT_PATH_MAX_LENGTH<..<"'${vcs_info_msg_0_%%.}'"%<<%(!.$PROMPT_ROOT_END.$PROMPT_DEFAULT_END)%{$FX[no-bold]%}%{$FX[reset]%} "

RPROMPT="%{$PROMPT_VCS_INFO_COLOR%}"'$vcs_info_msg_1_'"%{$FX[reset]%}"

#below prompt will display username and hostname only when connected via ssh
#(needs fix)
#${SSH_TTY:+[%n@%m]} <- this words doe
#PROMPT="${SSH_TTY:+%{$HOSTNAME_BRACKET%}[%{$NAME_COLOR%}%n%{$AT_COLOR%}@%{$NAME_COLOR%}%m%{$HOSTNAME_BRACKET%}] }%(0?.%{$PROMPT_SUCCESS_COLOR%}.%{$PROMPT_FAILURE_COLOR%})%{$FX[bold]%}%$PROMPT_PATH_MAX_LENGTH<..<"'${vcs_info_msg_0_%%.}'"%<<%(!.$PROMPT_ROOT_END.$PROMPT_DEFAULT_END)%{$FX[no-bold]%}%{$FX[reset]%} "
