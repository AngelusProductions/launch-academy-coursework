board_a = [['x', 'o', 'x'],['x', nil, 'o'],['x', 'o', nil]]
board_b = [[nil, 'o', 'x'],['x', 'o', nil],['x', 'o', nil]]

def print_grid (board)
  board.each do |row|
    print " "
    row.each_with_index do |char, index|
      print " " if char.nil?
      print char if !char.nil?
      print " | " if index != 2
    end
  print "\n-----------\n"
  end
end

print_grid(board_a)
print "\n"
print_grid(board_b)
