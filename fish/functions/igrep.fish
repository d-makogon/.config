function igrep --wraps='grep -i' --wraps=grep --wraps='grep -i --color' --description 'alias igrep=grep -i --color'
  grep -i --color $argv
        
end
