# Prompt Vars
#=#=#=#
#

zsh_wifi_signal(){
    local signal=$(nmcli device wifi | grep yes | awk '{print $8}')
    local color='%F{yellow}'
    [[ $signal -gt 75 ]] && color='%F{green}'
    [[ $signal -lt 50 ]] && color='%F{red}'
    echo -n "%{$color%}\uf230  $signal%{%f%}" # \uf230 is 
}

ZSH_THEME='powerlevel9k/powerlevel9k'
POWERLEVEL9K_MODE='nerdfont-complete'
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_RPROMPT_ON_NEWLINE=true
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR=$'\uE0B0'
POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR=$'\uE0B2'
POWERLEVEL9K_TIME_FORMAT="%D{%H:%M \}"
POWERLEVEL9K_CUSTOM_WIFI_SIGNAL="zsh_wifi_signal"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon history dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status virtualenv ram time rbenv)
POWERLEVEL9K_DIR_HOME_BACKGROUND='218'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND='100'
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND='163'
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND='159'
#POWERLEVEL9k_DIR_WRITABLE_BACKGROUND='197'
#POWERLEVEL9K_DIR_WRITABLE_FOREGROUND='148'
POWERLEVEL9K_COMMAND_EXECUTION_TIME_BACKGROUND='123'
POWERLEVEL9K_COMMAND_EXECUTION_TIME_FOREGROUND='243'
POWERLEVEL9K_OS_ICON_BACKGROUND='black'
POWERLEVEL9K_OS_ICON_FOREGROUND='007'
POWERLEVEL9K_HISTORY_BACKGROUND='white'
POWERLEVEL9K_HISTORY_FOREGROUND='black'
POWERLEVEL9K_OS_ICON_FOREGROUND='006'
POWERLEVEL9K_VCS_GIT_GITHUB_ICON=''
POWERLEVEL9K_VCS_CLEAN_BACKGROUND='013'
POWERLEVEL9K_VCS_CLEAN_FOREGROUND='124'
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='009'
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND='007'
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='095'
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND='255'
POWERLEVEL9K_DIR_WRITABLE_BACKGROUND='121'
POWERLEVEL9K_TIME_BACKGROUND='black'
POWERLEVEL9K_TIME_FOREGROUND='249'
POWERLEVEL9K_RAM_ELEMENTS=(swap_used)
POWERLEVEL9K_RAM_BACKGROUND='080'
POWERLEVEL9K_RAM_FOREGROUND='black'
POWERLEVEL9K_IP_INTERFACE='tun0'
POWERLEVEL9K_IP_FOREGROUND='001'
POWERLEVEL9K_PUBLIC_IP_TIMEOUT='360'
POWERLEVEL9K_PUBLIC_IP_BACKGROUND='125'
POWERLEVEL9K_PUBLIC_IP_FOREGROUND='233'
POWERLEVEL9K_DISK_USAGE_BACKGROUND='219'
POWERLEVEL9K_DISK_USAGE_FOREGROUND='187'
POWERLEVEL9K_VI_INSERT_MODE_STRING='In'
POWERLEVEL9K_VI_COMMAND_MODE_STRING='Com'
POWERLEVEL9K_STATUS_OK_FOREGROUND='green'
POWERLEVEL9K_STATUS_OK_BACKGROUND='white'
POWERLEVEL9K_STATUS_ERROR_BACKGROUND='white'
POWERLEVEL9K_STATUS_ERROR_FOREGROUND='red'
POWERLEVEL9K_NODE_VERSION_BACKGROUND='130'
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=''
POWERLEVEL9K_MULTILINE_SECOND_PROMPT_PREFIX='>>> '
POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
POWERLEVEL9K_SHORTEN_STRATEGY='truncate_middle'
POWERLEVEL9K_STATUS_VERBOSE=false
POWERLEVEL9K_SHOW_CHANGESET=true
POWERLEVEL9K_CHANGESET_HASH_LENGTH=6
POWERLEVEL9K_LINUX_ICON='\uF17C'
