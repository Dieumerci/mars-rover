module Directions
  class East
    def turn_left
      Directions::North.new
    end

    def turn_right
      Directions::South.new
    end

    def move(position)
      axis_x = Integer(position[:axis_x]) + 1
      axis_y = Integer(position[:axis_y])
      { axis_x: axis_x, axis_y: axis_y }
    end

    def to_s
      'E'
    end
  end
end
