keybindings_path="$HOME/.config/Code - OSS/User/keybindings.json"
file_name="keybindings.json"
keybindings_url="https://raw.githubusercontent.com/ns-color/config-dump/refs/heads/main/shortcuts"
masg="Found the config & change has been made."
if [[ -e $keybindings_path ]]; then
    echo "$masg"
    curl -sS "$keybindings_url" -o "$file_name"
    mv "$file_name" "$keybindings_path"
    echo ""
    echo "OUTPUT"
    cat "$keybindings_path"
else
    echo "Path not found:"
    echo "$keybindings_path"
    touch "$keybindings_path"
    echo "File '$file_name' is created!"

    if [[ -e $keybindings_path ]]; then
        echo "$masg"
        curl -sS "$keybindings_url" -o "$file_name"
        mv "$file_name" "$keybindings_path"
        echo ""
        echo "OUTPUT"
        cat "$keybindings_path"

    fi
fi

