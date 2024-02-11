function rl --wraps='readlink -f' --description 'alias rl=readlink -f'
  readlink -f $argv
        
end
