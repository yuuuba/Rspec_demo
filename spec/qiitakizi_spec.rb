require File.join(__dir__, '..', 'lib', 'qiitakizi.rb')

# RSpec.describe '四則演算' do
#   it '1 + 1 は 2 になること' do
#     expect(1 + 1).to eq 2
#   end
#   it '5 - 2は 3 になること' do
#     expect(5 - 2).to eq 2
#   end

#   Rspec.describe '四則演算2' do
#     it '4 + 2 が 6 になること' do
#       expect(4 + 2).to eq 6
#     end

#     it '正しい答え'do
#       expect(1+2).to eq 3
#       expect(4 - 1).to eq 3
#       expect(2 + 4).to eq 6
#       expect(3 + 2).to eq 5
#       expect(2 * 4).to eq 8
#       expect(8 / 2).to eq 4
#     end
#   end

#   describe '四則演算' do
#     describe '足し算'do
#       it '足し算' do
#         expect(3 + 2).to eq 5
#       end

#       it '引き算' do
#         expect(8 - 3).to eq 5
#       end
#     end

#   end
# end

# describe User do
#   describe '#greet' do
#     it '年齢が12歳以上かどうか' do
#       expect (@age).to 12
#     end

#     it '#greet' do
#       expect (@age).to 
#     end
#   end
# end

# describe User do
#   describe '#greet' do
#     context '12歳以下の場合' do
#       it 'ひらがなで答えること' do
#         user = User.new(name:'たろう', age: 12)
#         expect(user.greet).to eq 'ぼくはたろうだよ。'
#       end
#     end

#     context '13歳以上の場合' do
#       it '漢字で答える' do
#         user = User.new(name:'たろう',age: 30)
#         expect(user.greet).to eq '僕はたろうです。'
#       end
#     end
#   end
# end

describe User do
  describe '#greet' do
    before do
      @params = { name: 'たろう'}
    end

    context '12歳以下の場合' do
      before do
        @params.merge!(age: 12)
      end
      it 'ひらがなで答えること' do
        user = User.new(**@params.merge(age: 12))
        expect(user.greet).to eq 'ぼくはたろうだよ。'
      end
    end

    context '13歳以上の場合' do
      before do
        @params.merge!(age: 13)
      end
      it '漢字で答える' do
        user = User.new(**@params.merge(age: 30))
        expect(user.greet).to eq '僕はたろうです。'
      end
    end
  end
end

