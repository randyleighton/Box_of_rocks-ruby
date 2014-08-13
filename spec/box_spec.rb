require 'rspec'
require 'box'

describe Box do

  it "initializes an instance of Box" do
    new_box = Box.new("square", "brown", "large")
    expect(new_box).to be_an_instance_of Box
  end

  it "returns the characteristics of the box" do
    new_box = Box.new("square", "brown", "large")
    expect(new_box.shape).to eq "square"
    expect(new_box.color).to eq "brown"
    expect(new_box.size).to eq "large"
  end
end