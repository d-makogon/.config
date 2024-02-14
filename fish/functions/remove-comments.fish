function remove-comments
    if not test -f "$argv[1]"
        echo "No such file: $argv[1]" >/dev/tty
        return 1
    end
    sed -E '/(^$|^#)/d' -i "$argv[1]"
end
