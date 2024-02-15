function sali --wraps='sudo apt list --installed' --description 'alias sali=sudo apt list --installed'
  sudo apt list --installed $argv
        
end
