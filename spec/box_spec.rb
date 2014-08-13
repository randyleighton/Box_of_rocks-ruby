require 'rspec'
require 'boxes'

describe Box do

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
end