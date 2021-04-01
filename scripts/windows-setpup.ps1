Set-Variable -Name NVIM_CONF_DIR -Value "$env:HOME/AppData/Local/nvim"

# Install Neovim
choco install neovim --pre -y

# Required tools
choco install git -y
choco install python3 -y
choco install yq -y


# Optional tools
choco install ripgrep -y
choco install fzf -y
choco install universal-ctags -y

# Clone vim config
git clone git@github.com:lem-n/nvim.git $NVIM_CONF_DIR

# Download Plug
Invoke-WebRequest -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |`
       New-Item "$(@($env:XDG_DATA_HOME, $env:LOCALAPPDATA)[$null -eq $env:XDG_DATA_HOME])/nvim-data/site/autoload/plug.vim" -Force

# Download Language Servers

# rust-analyzer
git clone https://github.com/rust-analyzer/rust-analyzer.git $env:TEMP/rust-analyzer-tmp
Set-Location $env:TEMP/rust-analyzer-tmp
cargo xtask install

# TypeScript
npm install -g typescript typescript-language-server

# Python
python3 -m pip install python-language-server

Write-Host "Make sure to add these to your path: Python39\Scripts, cargo-bin, cargo-bin\bin "
