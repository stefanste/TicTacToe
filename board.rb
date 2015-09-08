require_relative 'row'
require_relative 'column'
require_relative 'position'
require_relative 'board_presenter'

class Board

  attr_accessor :rows
  attr_accessor :columns
  attr_accessor :diagonals
  attr_accessor :positions

  def initialize
    @rows = []
    @columns = []
    @diagonals = []
    @positions = []

    initialize_groups
    initialize_positions
  end

  def choose_position(input, team)
    # input will be '2C' for example
    position_index = convert_input_to_index(input)
    @positions[position_index].value = team
  end

  def somebody_has_won?
    (@rows + @columns + @diagonals).any?(&:complete?)
  end

  def full?
    @positions.none? { |position| position.value == ' ' }
  end

  def winner
    (@rows + @columns + @diagonals).detect(&:complete?).winning_team
  end

  def to_s
    BoardPresenter.new(self).to_s
  end

  private

  def convert_input_to_index(input)
    row_index = input.split('').first.to_i
    column_index = column_index_map[input.split('').last]

    (3 * (row_index - 1)) + (column_index - 1)
  end

  def column_index_map
    {
      'A' => 1,
      'B' => 2,
      'C' => 3
    }
  end

  def initialize_groups
    (0..2).each do |index|
      @rows << Row.new(index, self)
      @columns << Column.new(index, self)
    end

  end

  def initialize_positions
    9.times do
      @positions << Position.new
    end
  end

end
