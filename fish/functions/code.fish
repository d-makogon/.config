function code --description 'Run VSCode with Wayland backend'
command code --enable-features=UseOzonePlatform --ozone-platform=wayland $argv
end
