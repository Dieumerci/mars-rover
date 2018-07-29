require_relative '../../lib/directions/east'
require_relative '../../lib/directions/south'
require_relative '../../lib/directions/west'

describe Directions::South do
  let(:south) { described_class.new }

  describe '#turn_left' do
    let(:east) { Directions::East }

    it 'returns east' do
      expect_any_instance_of(east)
      south.turn_left
    end
  end

  describe '#turn_right' do
    let(:west) { Directions::West }

    it 'returns west' do
      expect_any_instance_of(west)
      south.turn_right
    end
  end

  describe '#move' do
    context 'when position are at bottom left corner' do
      let(:bottom_left_corner) { { axis_x: 0, axis_y: 0 } }
      let(:final_postion) { { axis_x: 0, axis_y: -1 } }

      it 'returns [0, -1]' do
        expect(south.move(bottom_left_corner)).to eq(final_postion)
      end
    end
  end

  describe '#to_s' do
    it { expect(south.to_s).to eq('S') }
  end
end
