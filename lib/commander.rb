class Commander
  VALID_COMMANDS = %w[L R M].freeze

  def initialize(rover)
    @rover = rover
  end

  def handle_commands(commands)
    commands.each_char do |command|
      execute(command) if VALID_COMMANDS.include?(command)
    end
  end

  private

  def execute(command)
    options = { 'L': 'turn_left', 'R': 'turn_right', 'M': 'move' }
    @rover.send(options[command.to_sym])
  end
end
