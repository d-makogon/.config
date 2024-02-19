function grom --wraps='git rebase origin/main' --description 'alias grom=git rebase origin/main'
  git rebase origin/main $argv
        
end
