require File.join(__dir__, '..', 'lib', 'fizz_buzz')

RSpec.describe FizzBuzz do
  # HINT && 宿題: let を使うと、「fizz_buzz = FizzBuzz.new」の繰り返し記述が消せる
  # let(:fizz_buzz) {}
  
  describe '#fizz?' do
    it '3 を与えると、 true が返ってくる' do
      fizz_buzz = FizzBuzz.new
      expect(fizz_buzz.fizz?(3)).to eq true
    end
    
    it '4 を与えると false が返ってくる' do
      fizz_buzz = FizzBuzz.new
      expect(fizz_buzz.fizz?(4)).to eq false
    end
  end

  describe '#buzz?' do
    it '5を与えると、trueが返ってくる' do
      fizz_buzz = FizzBuzz.new
      expect(fizz_buzz.buzz?(5)).to eq true
    end

    it '2 を与えると false が返ってくる' do
      fizz_buzz = FizzBuzz.new
      expect(fizz_buzz.buzz?(2)).to eq false
    end
  end
end