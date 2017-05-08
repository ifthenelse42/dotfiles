# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH
export BROWSER=chromium
export EDITOR=emacs
# Path to your oh-my-zsh installation.
export ZSH=/home/ifthenelse/.oh-my-zsh
export LANG=en_US.UTF-8
export LC_MESSAGES="C"
# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="bullet-train"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

#Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Primordials
alias air="emacs ~/symlink/org/main.org"
alias emacs="emacs -nw"

# arch-mobile-ifthenelse specific
alias light="xbacklight -set"

# both specific
alias ta="wine ~/.wine/drive_c/CAVEDOG/TOTALA/TotalA.exe"
alias ta-cd1="fuseiso ~/.wine/drive_c/CAVEDOG/TOTALA/Total\ Annihilation\ CD\ 1.iso /media/iso -o nonempty"
alias ta-cd2="fuseiso ~/.wine/drive_c/CAVEDOG/TOTALA/Total\ Annihilation\ CD\ 2.iso /media/iso -o nonempty"
alias steam-wine-install="wine ~/symlink/wine/drive_c/Program\ Files\ \(x86\)/Steam/Steam.exe steam://rungameid/"

# arch-ifthenelse specific
alias faf="wine ~/.wine/drive_c/Program\ Files\ \(x86\)/Forged\ Alliance\ Forever/FAForever.exe"
alias "steam-wine"="wine ~/.wine/drive_c/Program\ Files\ \(x86\)/Steam/Steam.exe"
alias bnet="wine ~/.wine/drive_c/Program\ Files\ \(x86\)/Battle.net/Battle.net\ Launcher.exe"
alias wasteland="sh /ssd/games/wasteland-2/start.sh"
alias wow="wine /ssd/wine/world\ of\ warcraft/WoW.exe"
alias tera="wine TERA-launcher.exe"
alias eve="wine ~/symlink/wine/drive_c/EVE/eve.exe"
alias stalker-misery="cd ~/symlink/wine/drive_c/Program\ Files\ \(x86\)/bitComposer\ Games/S.T.A.L.K.E.R.\ -\ Call\ of\ Pripyat && wine bin/xrEngine.exe"
alias stalker="cd /ssd/wine/S.T.A.L.K.E.R.\ -\ Call\ of\ Chernobyl && wine Stalker-CoC.exe"
alias warcraft-frozen="wine ~/symlink/wine/drive_c/Program\ Files\ \(x86\)/Warcraft\ III/war3.exe"
alias warcraft-chaos="wine ~/symlink/wine/drive_c/Program\ Files\ \(x86\)/Warcraft\ III/Warcraft\ III.exe"
alias sims="wine /ssd/wine/the\ sims\ 3/Game/Bin/TS3W.exe"

# devices
alias umount-iso="sudo umount /media/iso"

# computer infos
alias check-disks="df -h"
alias cpu-stress="stress --cpu 8 --io 4 --vm 2 --vm-bytes 128M --timeout 10s"
alias gpu-stress="glmark2"

# timed shutdowns
alias sd="shutdown -h now"
alias sd1m="shutdown -h 1"
alias sd2m="shutdown -h 2"
alias sd5m="shutdown -h 5"
alias sd30m="shutdown -h 30"
alias sd1h="shutdown -h 60"
alias sd2h="shutdown -h 120"
alias sd3h="shutdown -h 180"
alias sd4h="shutdown -h 240"
alias sd5h="shutdown -h 300"
alias sd10h="shutdown -h 600"

# youtube syntaxes
alias music-dl="youtube-dl -f m4a"
alias video-dl="youtube-dl -f best"
alias youtube="mpsyt"

# admin orders
alias install="yaourt -S"
alias uninstall="sudo pacman -R"
alias update-system="sudo pacman -Syuu"
alias update-all="yaourt -Syyuu --aur --devel"
alias esudo="sudo emacs"

# files
alias files="thunar"
alias copy="xclip -sel clip <"

# Network aliases
alias tether-probe="ip link"
alias tether-connect="sudo dhcpcd"

# VPN aliases - PIA
alias vpn-france="cd /etc/openvpn/client && sudo openvpn France.ovpn"
alias vpn-germany="cd /etc/openvpn/client && sudo openvpn Germany.ovpn"
alias vpn-japan="cd /etc/openvpn/client && sudo openvpn Japan.ovpn"
alias vpn-mexico="cd /etc/openvpn/client && sudo openvpn Mexico.ovpn"
alias vpn-romania="cd /etc/openvpn/client && sudo openvpn Romania.ovpn"
alias vpn-ireland="cd /etc/openvpn/client && sudo openvpn Ireland.ovpn"
alias vpn-india="cd /etc/openvpn/client && sudo openvpn India.ovpn"
alias vpn-singapore="cd /etc/openvpn/client && sudo openvpn Singapore.ovpn"
alias vpn-turkey="cd /etc/openvpn/client && sudo openvpn Turkey.ovpn"
alias vpn-sweden="cd /etc/openvpn/client && sudo openvpn Sweden.ovpn"
alias vpn-switzerland="cd /etc/openvpn/client && sudo openvpn Switzerland.ovpn"

# Dev aliases
alias nginx-on="sudo systemctl start mysqld nginx php-fpm"
alias nginx-restart="sudo systemctl restart mysqld nginx php-fpm"
alias nginx-off="sudo systemctl stop mysqld nginx php-fpm"
