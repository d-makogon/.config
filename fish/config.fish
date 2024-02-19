function fish_title
    set -q argv[1]; or set argv fish
    echo (fish_prompt_pwd_dir_length=0 prompt_pwd): $argv;
end

if status is-interactive
    # Commands to run in interactive sessions can go here
    bind '[3;5~' kill-word
end

