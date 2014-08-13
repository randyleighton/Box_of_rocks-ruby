class Box

  @@all_boxes =[]
  
  attr_reader :shape, :size, :color

  def initialize(attributes)
    @shape = attributes[:shape]
    @size = attributes[:size]
    @color = attributes[:color]
    @rocks = []
  end

  def Box.all
    @@all_boxes
  end
  
  def Box.clear
    @@all_boxes = []
  end

  def save
    @@all_boxes << self
  end
  
end