require_relative '../lib/commander'

describe Commander do
  describe '#handle_commands' do
    let(:rover) { double }
    let(:commander) { described_class.new(rover) }

    context 'when given input is L' do
      it 'turns the rover left' do
        expect(rover).to receive(:turn_left)
        commander.handle_commands('L')
      end
    end

    context 'when given input is R' do
      it 'turns the rover right' do
        expect(rover).to receive(:turn_right)
        commander.handle_commands('R')
      end
    end

    context 'when given input is M' do
      it 'moves the rover' do
        expect(rover).to receive(:move)
        commander.handle_commands('M')
      end
    end

    context 'when given input is not treatable' do
      it 'lets the rover still' do
        expect(rover).not_to receive(:turn_left)
        expect(rover).not_to receive(:turn_right)
        expect(rover).not_to receive(:move)
        commander.handle_commands('NOPE')
      end
    end
  end
end
