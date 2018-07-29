module Directions
  class North
    def turn_left
      Directions::West.new
    end

    def turn_right
      Directions::East.new
    end

    def move(position)
      axis_x = Integer(position[:axis_x])
      axis_y = Integer(position[:axis_y]) + 1
      { axis_x: axis_x, axis_y: axis_y }
    end

    def to_s
      'N'
    end
  end
end
