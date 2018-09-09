describe Rover do
  let(:plateau) { Plateau.new(5, 5) }
  let(:position) { { axis_x: 3, axis_y: 3 } }

  describe '#turn_left' do
    before { rover.turn_left }

    context 'when it faces north' do
      let(:rover) { Rover.new(position, 'N', plateau) }

      it 'faces WEST' do
        expect(rover.to_s).to eq('3 3 W')
      end
    end

    context 'when it faces west' do
      let(:rover) { Rover.new(position, 'W', plateau) }

      it 'faces SOUTH' do
        expect(rover.to_s).to eq('3 3 S')
      end
    end

    context 'when it faces east' do
      let(:rover) { Rover.new(position, 'E', plateau) }

      it 'faces NORTH' do
        expect(rover.to_s).to eq('3 3 N')
      end
    end

    context 'when it faces south' do
      let(:rover) { Rover.new(position, 'S', plateau) }

      it 'faces EAST' do
        expect(rover.to_s).to eq('3 3 E')
      end
    end
  end

  describe '#turn_right' do
    before { rover.turn_right }

    context 'when it faces north' do
      let(:rover) { Rover.new(position, 'N', plateau) }

      it 'faces EAST' do
        expect(rover.to_s).to eq('3 3 E')
      end
    end

    context 'when it faces west' do
      let(:rover) { Rover.new(position, 'W', plateau) }

      it 'faces NORTH' do
        expect(rover.to_s).to eq('3 3 N')
      end
    end

    context 'when it faces east' do
      let(:rover) { Rover.new(position, 'E', plateau) }

      it 'faces SOUTH' do
        expect(rover.to_s).to eq('3 3 S')
      end
    end

    context 'when it faces south' do
      let(:rover) { Rover.new(position, 'S', plateau) }

      it 'faces WEST' do
        expect(rover.to_s).to eq('3 3 W')
      end
    end
  end

  describe '#move' do
    before { rover.move }

    context 'when it tries to moves out of bounds' do
      let(:maximum_y_position) { { axis_x: 3, axis_y: 5 } }

      let(:rover) { Rover.new(maximum_y_position, 'N', plateau) }

      it 'stays still' do
        expect(rover.to_s).to eq('3 5 N')
      end
    end

    context 'when it faces north' do
      let(:rover) { Rover.new(position, 'N', plateau) }

      it 'faces NORTH' do
        expect(rover.to_s).to eq('3 4 N')
      end
    end

    context 'when it faces west' do
      let(:rover) { Rover.new(position, 'W', plateau) }

      it 'faces WEST' do
        expect(rover.to_s).to eq('2 3 W')
      end
    end

    context 'when it faces east' do
      let(:rover) { Rover.new(position, 'E', plateau) }

      it 'faces EAST' do
        expect(rover.to_s).to eq('4 3 E')
      end
    end

    context 'when it faces south' do
      let(:rover) { Rover.new(position, 'S', plateau) }

      it 'faces SOUTH' do
        expect(rover.to_s).to eq('3 2 S')
      end
    end
  end
end
