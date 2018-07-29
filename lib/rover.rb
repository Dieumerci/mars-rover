require_relative './directions/east'
require_relative './directions/north'
require_relative './directions/south'
require_relative './directions/west'

class Rover
  def initialize(position, direction_key)
    @position = position
    @direction = direction(direction_key)
  end

  def turn_left
    @direction = @direction.turn_left
  end

  def turn_right
    @direction = @direction.turn_right
  end

  def move
    @position = @direction.move(@position)
  end

  def to_s
    "#{@position[:axis_x]} #{@position[:axis_y]} #{@direction}"
  end

  private

  def direction(key)
    if key == 'N'
      Directions::North.new
    elsif key == 'E'
      Directions::East.new
    elsif key == 'W'
      Directions::West.new
    elsif key == 'S'
      Directions::South.new
    end
  end
end
