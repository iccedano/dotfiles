if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Environment variables
set -x EDITOR nvim
set -x VISUAL nvim
set -x COLORTERM truecolor
set -x DOTNET_ROOT /home/iceman/.dotnet
set -g theme_nerd_fonts yes
set -g theme_color_scheme dracula
# Add custom paths
fish_add_path /home/$USER/ICEbreaker/bin
fish_add_path /home/iceman/.local/bin
fish_add_path /home/iceman/.cargo/bin
fish_add_path /home/iceman/.go/bin
fish_add_path /home/iceman/.go/bin/bin
fish_add_path /home/iceman/.dotnet
fish_add_path /home/iceman/.dotnet/tools

# Aliases ported from .zshrc
alias napster='yt-dlp -x --audio-format best -o "%(title)s.%(ext)s" --embed-thumbnail --embed-metadata --parse-metadata "playlist_index:%(track_number)s"'
alias pipes='~/ICEbreaker/bin/pipes.sh'
alias weather='curl wttr.in/Hermosillo'
alias ip='ip -c=auto'
alias rm='rm -v'
alias mv='mv -v'
alias cp='cp -v'
alias df='df -h'
alias arena='cd /mnt/d'
alias polygon='. .venv/bin/activate.fish'
alias musikcube='/mnt/d/musikcube/musikcube-cmd.exe'
alias cava='/mnt/c/Users/icedano/AppData/Local/Microsoft/WinGet/Packages/karlstav.cava_Microsoft.Winget.Source_8wekyb3d8bbwe/cava.exe'
alias dumb='w3m https://dumb.icedano.dev/'
alias adb='/mnt/c/platform-tools/adb.exe'
alias sprawl='mosh --ssh="ssh -p 2220 -i ~/.ssh/sprawl" bnewmark@labs.icedano.dev'

set fish_greeting ""

function jwt-decod-deve
  echo $argv[1] | jq -R 'split(".") |.[0:2] | map(gsub("-"; "+") | gsub("_"; "/") | gsub("%3D"; "=") | @base64d) | map(fromjson)'
end

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv fish)"
