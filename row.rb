class Row
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
    @board.positions.slice(3*index, 3)
  end
end
