require File.join(__dir__, '..', 'lib', 'fizz_buzz')

RSpec.describe FizzBuzz do
  # HINT && 宿題: let を使うと、「fizz_buzz = FizzBuzz.new」の繰り返し記述が消せる
  let(:fizz_buzz) { FizzBuzz.new }
  
  describe '#fizz?' do
    it '3 を与えると、 true が返ってくる' do
      expect(fizz_buzz.fizz?(3)).to eq true
    end
    
    it '4 を与えると false が返ってくる' do
      expect(fizz_buzz.fizz?(4)).to eq false
    end
  end

  describe '#buzz?' do
    it '5を与えると、trueが返ってくる' do
      expect(fizz_buzz.buzz?(5)).to eq true
    end

    it '2 を与えると false が返ってくる' do
      expect(fizz_buzz.buzz?(2)).to eq false
    end
  end

  describe '#fizzbuzz?' do
    it '15を与えると、true が返ってくる' do
      expect(fizz_buzz.fizzbuzz?(15)).to eq true
    end

    it '11を与えると、true が返ってくる' do
      expect(fizz_buzz.fizzbuzz?(11)).to eq false
    end
  end

  # describe '#judgment' do
  #   it 'それぞれの数値をテストする' do
  #     expect(fizz_buzz.judgment?(15)).to eq true
  #   end

  #   it 'それぞれの数値をテストする' do
  #     expect(fizz_buzz.judgment?(14)).to eq false
  #   end
  # end

end