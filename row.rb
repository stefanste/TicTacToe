require_relative 'group'

class Row < Group

  private

  def positions
    @board.positions.slice(3*index, 3)
  end
end
