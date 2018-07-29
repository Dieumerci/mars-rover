class Commander
  def initialize(rover)
    @rover = rover
  end

  def handle_commands(commands)
    commands.each_char do |command|
      if command == 'L'
        @rover.turn_left
      elsif command == 'R'
        @rover.turn_right
      elsif command == 'M'
        @rover.move
      end
    end
  end
end
