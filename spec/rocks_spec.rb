require 'rspec'
require 'rocks'

describe Rock do

  it "initializes an instance of Rock" do
    rock1 = Rock.new({:shape =>"round", :size =>"small", :weight =>"heavy"})
    expect(rock1).to be_an_instance_of Rock
  end

  it "returns the rock characteristics" do
      rock1 = Rock.new({:shape =>"round", :size =>"small", :weight =>"heavy"})
      expect(rock1.shape).to eq "round"
      expect(rock1.size).to eq "small"
      expect(rock1.weight).to eq "heavy"
  end

  it "starts with an empty array" do
    expect(Rock.all).to eq []
  end

  it "adds rocks to the rock array" do
    rock1 = Rock.new({:shape =>"round", :size =>"small", :weight =>"heavy"})
    rock1.save
    expect(Rock.all).to eq [rock1]
  end

  it "reshapes a rock in the collection" do
    new_rock = Rock.new({:shape =>"jagged", :size =>"small", :weight =>"light"})
    new_rock.reshape({:shape =>"smooth", :size =>"small", :weight =>"light"})
  end

end
