function fish_prompt
    # This is a simple prompt. It looks like
    # alfa@nobby /path/to/dir $
    # with the path shortened and colored
    # and a "#" instead of a "$" when run as root.
    set -l symbol '$ '
    set -l cwd_color $fish_color_cwd
    set -l user_color 6eadf0
    set -l at_color 98c6eb
    set -l pwd_color 6eadf0
    set -l colon_color $fish_color_command
    
    if fish_is_root_user
        set symbol ' # '
        set -q fish_color_cwd_root
        and set cwd_color $fish_color_cwd_root
    end

    set_color $user_color
    echo -n $USER

    set_color $at_color
    echo -n @
    
    set_color $pwd_color
    echo -n $hostname
    
    set_color $colon_color
    echo -n :

    set_color $cwd_color
    echo -n (prompt_pwd)
    set_color normal

    echo -n $symbol
end

function fish_right_prompt -d "Write out the right prompt"
    set -l branch_color c74c63
    set_color $branch_color
    echo (fish_vcs_prompt)
end

function fish_title
    set -q argv[1]; or set argv fish
    echo (fish_prompt_pwd_dir_length=0 prompt_pwd): $argv;
end

if status is-interactive
    # Commands to run in interactive sessions can go here
end
