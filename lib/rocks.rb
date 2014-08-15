class Rock

@@rock_all = []

  attr_reader :shape, :size, :weight

  def initialize(attributes)
    @shape = attributes[:shape]
    @size = attributes[:size]
    @weight = attributes[:weight]
  end

  def Rock.all
    @@rock_all
  end

  def Rock.clear
    @@rock_all = []
  end

  def save
    @@rock_all << self
  end

  def reshape(attributes)
    @shape = attributes[:shape]
    @size = attributes[:size]
    @weight = attributes[:weight]
  end

end
