function sas --wraps='sudo apt search' --description 'alias sas=sudo apt search'
  sudo apt search $argv
        
end
