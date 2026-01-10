alias python='winpty python.exe'
export PATH=$PATH:/c/Users/3kama/terraform/
export PATH=$PATH:"/c/Program Files/Neovim/bin/"
export PATH=$PATH:"/c/Program Files/ffmpeg/bin/"
# Git Bash / MSYS2: fix TUI apps hanging
if command -v winpty >/dev/null 2>&1; then
  alias nvim='winpty nvim'
  alias vim='winpty vim'
fi
