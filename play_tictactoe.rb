require_relative 'board'

board = Board.new

puts "What team would you like to play as? ('X' or 'O')"
user_team = gets.chomp

puts board.positions.first.value

loop do
  # Display current state
  puts board.to_s

  puts "Where do you want to move?"
  board.choose_position(gets.chomp, user_team)

  # Todo: Write AI for computer opponent!
  # board.choose_position(AI.select_position, AI_team)

  if board.somebody_has_won?
    puts board.to_s
    puts "#{board.winner} has won!"
    exit
  end

  if board.full?
    puts board.to_s
    puts "Game over - draw"
    exit
  end
end
