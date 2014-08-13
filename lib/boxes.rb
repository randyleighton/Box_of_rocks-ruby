class Box

  attr_reader :shape, :size, :color

  def initialize(attributes)
    @shape = attributes[:shape]
    @size = attributes[:size]
    @color = attributes[:color]
  end

end