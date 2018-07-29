require_relative './directions/east'
require_relative './directions/north'
require_relative './directions/south'
require_relative './directions/west'

class Rover
  def initialize(position, direction_key, plateau)
    @position = position
    @direction = direction(direction_key)
    @plateau = plateau
  end

  def turn_left
    @direction = @direction.turn_left
  end

  def turn_right
    @direction = @direction.turn_right
  end

  def move
    return unless in_bounds?
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

  def in_bounds?
    position = @direction.move(@position)
    axis_x = position[:axis_x]
    axis_y = position[:axis_y]
    if axis_x > @plateau.width || axis_x < 0 ||
       axis_y > @plateau.height || axis_y < 0
      return false
    end
    true
  end
end
