function fish_right_prompt -d "Write out the right prompt"
    set -l branch_color c74c63
    set_color $branch_color
    echo (fish_vcs_prompt)
end
