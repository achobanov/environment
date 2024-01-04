git_aliases_path="/c/Program Files/Git/etc/profile.d/aliases.sh"
if ! [ -f "$git_aliases_path" ]; then
    echo Git bash not installed in default location '/c/Program Files/Git'
    exit;
fi

# Add empty line
echo -en '\n\n' | cat >> "$git_aliases_path"

# Define environment_path variable used in aliases.sh
echo "# environment aliases" >> "$git_aliases_path" 
echo "environment_path=$PWD" >> "$git_aliases_path"

# Add custom aliases, dos2unix removes BOM
cat aliases.sh | dos2unix >> "$git_aliases_path"