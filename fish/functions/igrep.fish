function igrep --wraps='grep -i' --wraps=grep --description 'case insensitive grep'
command grep -i $argv
end
