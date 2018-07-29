module Directions
  class West
    def turn_left
      Directions::South.new
    end

    def turn_right
      Directions::North.new
    end

    def move(position)
      axis_x = Integer(position[:axis_x]) - 1
      axis_y = Integer(position[:axis_y])
      { axis_x: axis_x, axis_y: axis_y }
    end

    def to_s
      'W'
    end
  end
end
