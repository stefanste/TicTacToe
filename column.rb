class Column

  attr_reader :index
  def initialize(index, board)
    @index = index
    @board = board
  end

  def complete?
    positions.all? { |position| position.value == 'X' } ||
    positions.all? { |position| position.value == 'O' }
  end

  private

  def positions
    @board.positions.values_at(index, index + 3, index + 6)
  end
end
