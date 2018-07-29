require_relative './rover'
require_relative './commander'

plateau = ARGF.gets

until ARGF.eof
  input = ARGF.gets.split
  position = { axis_x: input[0], axis_y: input[1] }
  direction_key = input[2]
  rover = Rover.new(position, direction_key)
  Commander.new(rover).handle_commands(ARGF.gets)
  puts rover
end
