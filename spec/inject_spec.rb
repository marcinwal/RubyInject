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
      expect([1,2,3,4].my_inject(:+)).to eq(10)
    end  

    it "should work with symbol '*' as parameter" do
      expect([1,2,3,4].my_inject(:*)).to eq(24)
    end  

    it 'should work with symbol and initial value' do
      expect([1,2,3,4].my_inject(10,:+)).to eq(20)
    end

    it 'should work with new_inject' do
      expect([1,2,3,4].new_inject{|m,el| m + el}).to eq(10)
    end  

    it 'should work with new_inject and * ' do
      expect([1,2,3,4].new_inject{|m,el| m * el}).to eq(24)
    end  

    it 'should work with new_inject at symbol' do
      expect([1,2,3,4].new_inject(:*)).to eq(24)
    end

    it 'should work with new_inject , symbol and initial' do
      expect([1,2,3,4].new_inject(10,:*)).to eq(240)
    end

end