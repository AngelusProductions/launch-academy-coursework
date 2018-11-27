def print_puzzle (word, guesses = [])
  word.split("").each do |character|
    if guesses.include?(character)
      print character
    else
      print "_"
    end
  end
end

print_puzzle("triangle", ["t", "s", "g"])
