keybindings_path="$HOME/.config/Code - OSS/User/keybindings.json"
file_name="keybindings.json"
keybindings_url="https://raw.githubusercontent.com/ns-color/config-dump/refs/heads/main/keybindings.json"
if [[ -e $keybindings_path ]]; then
    echo "Found config"
    curl -sS "$keybindings_url" -o "$file_name"
    mv "- $file_name" "$keybindings_path"
    clear
    echo $keybindings_url
    echo "↴"
    echo $keybindings_path
    echo ""
    echo "Done!"

fi