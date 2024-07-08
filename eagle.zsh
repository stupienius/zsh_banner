# Function to display fortune within the lighthouse art
show_fortune_in_lighthouse() {
  local fortune_text=$(fortune)
  local whoami=$(whoami)
  local fortune_lines=(${(f)fortune_text})  # Split fortune into an array of lines
  local line_count=${#fortune_lines[@]}
  local max_lines=8
  while [ ${#fortune_lines[@]} -lt $max_lines ]; do
    fortune_lines+=("                                                                                     ")
  done

  fortune_lines=("${fortune_lines[@]:0:8}")

    printf "                                                              __..-'\n"
    printf "                                                        _.--''\n"
    printf "                                              _...__..-'\n"
    printf "                                            .'\n"
    printf "                                          .'\n"
    printf "                                        .'\n"
    printf "                                      .'    | welcome %s\n" "${whoami}"
    printf "           .------._                 ;      |--------------------------------------------------------------------------------------|\n"
    printf "     .-\"\"\"\`-.<')    \`-._           .'       | %-85s|\n" "${fortune_lines[0]:0:85}"
    printf "    (.--. _   \`._       \`'---.__.-'         | %-85s|\n" "${fortune_lines[1]:0:85}"
    printf "     \`   \`;'-.-'         '-    ._           | %-85s|\n" "${fortune_lines[2]:0:85}"
    printf "       .--'\`  '._      - '   .              | %-85s|\n" "${fortune_lines[3]:0:85}"
    printf "        \`\"\"'-.    \`---'    ,                | %-85s|\n" "${fortune_lines[4]:0:85}"
    printf "''--..__      \`\\                            | %-85s|\n" "${fortune_lines[5]:0:85}"
    printf "        \`''---'\`\\      .'                   | %-85s|\n" "${fortune_lines[6]:0:85}"
    printf "                  \`'. '                     | %-85s|\n" "${fortune_lines[7]:0:85}"
    printf "                    \`'.                     |--------------------------------------------------------------------------------------|\n"

 
}

# Display welcome message and fortune in lighthouse
echo ""
show_fortune_in_lighthouse | lolcat
echo ""
