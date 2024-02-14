function fish_prompt
    # alfa@nobby:/path/to/dir$ 

    set -l symbol '$ '
    set -l cwd_color $fish_color_cwd
    set -l user_color $fish_color_user
    set -l hostname_color $fish_color_user
    set -l at_color $fish_color_normal
    set -l pwd_color $fish_color_cwd
    set -l colon_color $fish_color_command
    set -l dollar_color $fish_color_normal

    if fish_is_root_user
        set symbol ' # '
        set -q fish_color_cwd_root
        and set cwd_color $fish_color_cwd_root
    end

    set_color $user_color
    echo -n $USER

    set_color $at_color
    echo -n @

    set_color $hostname_color
    echo -n (prompt_hostname)

    set_color $colon_color
    echo -n :

    set_color $pwd_color
    echo -n (prompt_pwd)

    set_color normal
    echo -n $symbol
end
