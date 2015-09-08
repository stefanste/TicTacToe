require_relative 'group'

class Column < Group

  private

  def positions
    @board.positions.values_at(index, index + 3, index + 6)
  end
end
