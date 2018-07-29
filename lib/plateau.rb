class Plateau
  attr_reader :height, :width

  def initialize(height, width)
    @height = height.to_i
    @width = width.to_i
  end
end
