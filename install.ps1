try {
    git clone https://github.com/co1e/dotfiles 
}
catch [System.Management.Automation.CommandNotFoundException]
{
    winget install --id Git.Git -e --source winget
}
winget install --id Git.Git -e --source winget
winget install vscodium
winget install PureText
winget install --id voidtools.Everything -e --soruce winget
winget install --id Microsoft.PowerToys -e --source winget
winget install --id Docker.DockerDesktop -e --source winget
winget install --id QL-Win.QuickLook -e --source winget
winget install WindowsTerminal --source winget
# One liner
# winget install Git.Git && winget install 7zip.7zip && winget install voidtools.Everything && winget install Docker.DockerDesktop && winget install Microsoft.PowerToys
# Add symbolic link to vim config 
New-Item -ItemType SymbolicLink -Path "C:\Program Files\Neovim\bin\lua\co1e\init.lua" -Target "C:\Users\thmco\.dotfiles\lua\co1e\init.lua"
New-Item -ItemType SymbolicLink -Path "C:\Users\thmco\AppData\Local\nvim\init.vim" -Target "C:\Users\thmco\.dotfiles\init.vim"
