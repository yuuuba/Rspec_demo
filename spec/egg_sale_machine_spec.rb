require File.join(__dir__, '..', 'lib', 'egg_sale_machine')

RSpec.describe EggSaleMachine do
  let(:egg_sale_machine) { EggSaleMachine.new }
  
  describe 'money_check' do
    it '投入代金が500円玉だとtrue' do
      expect(egg_sale_machine.money_check(500)).to eq true
    end

    it '投入代金が500円玉以外だとfalse' do
      expect(egg_sale_machine.money_check(100)).to eq false
    end
  end

  describe 'buy_check' do
    it '投入金額が500円玉だとtrue' do
      expect(egg_sale_machine.buy_check()).to eq true
    end

    it '投入代金が500円玉以外だとfalse' do
      expect(egg_sale_machine.buy_check()).to eq false
    end
  end
end