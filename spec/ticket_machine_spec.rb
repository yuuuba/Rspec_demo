require File.join(__dir__, '..', 'lib', 'ticket_machine')

RSpec.describe TicketMachine do #クラス名？
  let(:ticket_machine) { TicketMachine.new } #:ticket_machineファイル名？

  describe '#up_count' do
    it '注文数が1増える' do
      expect(ticket_machine.up_count(1)).to eq true
    end

    it '注文数が2増える' do
      expect(ticket_machine.up_count(2)).to eq false
    end
  end

  describe '#down_count' do
    it '注文数が1減る' do
      expect(ticket_machine.down_count(1)).to eq true
    end

    it '注文数が2減る' do
      expect(ticket_machine.down_count(2)).to eq false
    end
  end
end