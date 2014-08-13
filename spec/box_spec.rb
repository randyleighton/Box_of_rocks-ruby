require 'rspec'
require 'boxes'

describe Box do
  
  before do
    Box.clear
  end

  describe '.all' do
    it 'contains all the rocks in the box' do
      box1 = Box.new({:shape =>"square", :size =>"large", :color =>"brown"})
      box2 = Box.new({:shape =>"square", :size =>"small", :color =>"brown"})
      box1.save
      box2.save
      expect(Box.all). to eq [box1, box2]
    end
  end
  
  describe '.clear' do
    it 'empties out all of the saved boxes' do
      box1 = Box.new({:shape =>"square", :size =>"large", :color =>"brown"})
      box1.save 
      Box.clear
      expect(Box.all).to eq []
    end
  end
  
  it "initializes an instance of Box" do
    new_box = Box.new({:shape =>"square", :size =>"large", :color =>"brown"})
    expect(new_box).to be_an_instance_of Box
  end

  it "returns the characteristics of the box" do
    new_box = Box.new({:shape =>"square", :size =>"large", :color =>"brown"})
    expect(new_box.shape).to eq "square"
    expect(new_box.size).to eq "large"
    expect(new_box.color).to eq "brown"
  end
  
  it "adds a new rock to the Box" do
    new_box = Box.new({:shape =>"square", :size =>"large", :color =>"brown"})
    new_box.save
    rock1 = Rock.new({:shape =>"round", :size =>"small", :weight =>"heavy"})
    new_box.add_rock(rock1)
    expect(Box.all).to eq [new_box]
  end
  
end