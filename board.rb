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

  private

  def initialize_groups
    (1..3).each do |index|
      @rows << Row.new(index)
      @columns << Column.new(index)
    end

  end

  def initialize_positions

  end

end
