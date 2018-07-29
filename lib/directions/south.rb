module Directions
  class South
    def turn_left
      Directions::East.new
    end

    def turn_right
      Directions::West.new
    end

    def move(position)
      axis_x = Integer(position[:axis_x])
      axis_y = Integer(position[:axis_y]) - 1
      { axis_x: axis_x, axis_y: axis_y }
    end

    def to_s
      'S'
    end
  end
end
