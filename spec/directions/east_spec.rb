describe Directions::East do
  let(:east) { described_class.new }

  describe '#turn_left' do
    let(:north) { Directions::North }

    it 'returns north' do
      expect_any_instance_of(north)
      east.turn_left
    end
  end

  describe '#turn_right' do
    let(:south) { Directions::South }

    it 'returns south' do
      expect_any_instance_of(south)
      east.turn_right
    end
  end

  describe '#move' do
    context 'when position are at bottom left corner' do
      let(:bottom_left_corner) { { axis_x: 0, axis_y: 0 } }
      let(:final_postion) { { axis_x: 1, axis_y: 0 } }

      it 'returns [1, 0]' do
        expect(east.move(bottom_left_corner)).to eq(final_postion)
      end
    end
  end

  describe '#to_s' do
    it { expect(east.to_s).to eq('E') }
  end
end
