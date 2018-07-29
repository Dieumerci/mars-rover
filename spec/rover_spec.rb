require_relative '../lib/rover'

describe Rover do
  let(:position) { { axis_x: 0, axis_y: 0 } }

  describe '#turn_left' do
    before { rover.turn_left }

    context 'when it faces north' do
      let(:rover) { Rover.new(position, 'N') }

      it 'faces WEST' do
        expect(rover.to_s).to eq('0 0 W')
      end
    end

    context 'when it faces west' do
      let(:rover) { Rover.new(position, 'W') }

      it 'faces WEST' do
        expect(rover.to_s).to eq('0 0 S')
      end
    end

    context 'when it faces east' do
      let(:rover) { Rover.new(position, 'E') }

      it 'faces WEST' do
        expect(rover.to_s).to eq('0 0 N')
      end
    end

    context 'when it faces south' do
      let(:rover) { Rover.new(position, 'S') }

      it 'faces WEST' do
        expect(rover.to_s).to eq('0 0 E')
      end
    end
  end

  describe '#turn_right' do
    before { rover.turn_right }

    context 'when it faces north' do
      let(:rover) { Rover.new(position, 'N') }

      it 'faces WEST' do
        expect(rover.to_s).to eq('0 0 E')
      end
    end

    context 'when it faces west' do
      let(:rover) { Rover.new(position, 'W') }

      it 'faces WEST' do
        expect(rover.to_s).to eq('0 0 N')
      end
    end

    context 'when it faces east' do
      let(:rover) { Rover.new(position, 'E') }

      it 'faces WEST' do
        expect(rover.to_s).to eq('0 0 S')
      end
    end

    context 'when it faces south' do
      let(:rover) { Rover.new(position, 'S') }

      it 'faces WEST' do
        expect(rover.to_s).to eq('0 0 W')
      end
    end
  end

  describe '#move' do
    before { rover.move }

    context 'when it faces north' do
      let(:rover) { Rover.new(position, 'N') }

      it 'faces WEST' do
        expect(rover.to_s).to eq('0 1 N')
      end
    end

    context 'when it faces west' do
      let(:rover) { Rover.new(position, 'W') }

      it 'faces WEST' do
        expect(rover.to_s).to eq('-1 0 W')
      end
    end

    context 'when it faces east' do
      let(:rover) { Rover.new(position, 'E') }

      it 'faces WEST' do
        expect(rover.to_s).to eq('1 0 E')
      end
    end

    context 'when it faces south' do
      let(:rover) { Rover.new(position, 'S') }

      it 'faces WEST' do
        expect(rover.to_s).to eq('0 -1 S')
      end
    end
  end
end
