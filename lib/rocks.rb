class Rock

  attr_reader :shape, :size, :weight
  
  def initialize(attributes)
    @shape = attributes[:shape]
    @size = attributes[:size]
    @weight = attributes[:weight]
  end
  
  def reshape(attributes)
    @shape = attributes[:shape]
    @size = attributes[:size]
    @weight = attributes[:weight]
  end
  
end