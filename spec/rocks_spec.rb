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

end
