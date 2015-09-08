require_relative '../row'

describe 'Row' do
  class MockPosition
    attr_accessor :value
    def initialize(value)
      @value = value
    end
  end

  let(:row) { Row.new(1, board) }
  let(:board) { double(positions: positions)}
  let(:positions) {
    [MockPosition.new(''), MockPosition.new(''), MockPosition.new(''),
     MockPosition.new('X'), MockPosition.new('X'), MockPosition.new('X'),
     MockPosition.new(''), MockPosition.new(''), MockPosition.new('')]
  }

  context '#complete?' do
    context 'when all positions in the row have the same value' do
      it 'should be true' do
        expect(row).to be_complete
      end
    end

    context 'when row has mixed values' do
      before { positions[4].value = 'O' }
      it 'should be false' do
        expect(row).not_to be_complete
      end
    end
  end

end
