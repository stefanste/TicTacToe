class BoardPresenter
  def initialize(board)
    @board = board
  end

  def to_s
    puts dividing_line
    puts "| #{value_at(0)} | #{value_at(1)} | #{value_at(2)} |"
    puts dividing_line
    puts "| #{value_at(3)} | #{value_at(4)} | #{value_at(5)} |"
    puts dividing_line
    puts "| #{value_at(6)} | #{value_at(7)} | #{value_at(8)} |"
    puts dividing_line
  end

  private

  def dividing_line
    "+---+---+---+"
  end

  def value_at(index)
    @board.positions[index].value
  end
end
