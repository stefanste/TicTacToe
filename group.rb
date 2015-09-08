class Group
  attr_reader :index

  def initialize(index, board)
    @index = index
    @board = board
  end

  def complete?
    positions.all? { |position| position.value == 'X' } ||
    positions.all? { |position| position.value == 'O' }
  end
end
