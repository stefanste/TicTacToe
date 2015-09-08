require_relative '../board'

describe 'Board' do
  let(:board) { Board.new }
  context '#convert_input_to_index' do
    # Todo: Test this via #choose_position instead of testing private method directly
    specify {
      expect(board.send(:convert_input_to_index, '2C')).to eq 5
      expect(board.send(:convert_input_to_index, '1A')).to eq 0
      expect(board.send(:convert_input_to_index, '3B')).to eq 7
      expect(board.send(:convert_input_to_index, '3C')).to eq 8
    }
  end

end
