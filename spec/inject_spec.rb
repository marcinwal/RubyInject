require 'inject.rb'

describe Array do

    it 'can add numbers' do
      expect([1,2,3,4].my_inject{|m,el| m + el}).to eq(10)
    end  

    it 'should multiply' do
      expect([1,2,3,4].my_inject{|m,el| m * el}).to eq(24)
    end

    it 'can substract the numbers' do
      expect([10,4,3,2,1].my_inject{|m,el| m - el}).to eq(0)
    end

    it 'should work with initial' do
      expect([1,2,3,4].my_inject(10){|m,el| m + el}).to eq(20)
    end

    it "should work with symbol '+' as parameter" do
      expect([1,2,3,4].inject(:+)).to eq(10)
    end  

    it "should work with symbol '*' as parameter" do
      expect([1,2,3,4].inject(:*)).to eq(24)
    end  

 # context with  symbol do
 #  it can add numbers together
 #  expect([1,23,4].inject(:+)).to eq(10)

 # context with an argument and a block do
 #  it can add with a starting point
 #  expect([1,2,3,4].inject(10){|mem,item| mem + item}).to eq(10) 
 # end
 
 # context with an arguemnt and a symbol do
 #  it can  with a starting poiny and a symbol do 
 #    expect( [1,2,3,4].injec(10,:+)).to eq(20)
 #  end
end