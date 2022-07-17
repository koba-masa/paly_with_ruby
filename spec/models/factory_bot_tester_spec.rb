require './src/models/factory_bot_tester'
require './spec/factories/factory_bot_tester'
require './spec/factories/factory_bot_trait_tester'

RSpec.describe FactoryBotTester, type: :model do
  let(:john_doe) { FactoryBot.build(:factory_bot_tester) }
  let(:yamada) { FactoryBot.build(:factory_bot_tester, :yamada) }
  let(:sato) { FactoryBot.build(:factory_bot_tester, :sato) }
  let(:suzuki) { FactoryBot.build(:factory_bot_tester, :suzuki) }
  let(:tanaka) { FactoryBot.build(:factory_bot_tester, :tanaka) }
  let(:yamamoto) { FactoryBot.build(:factory_bot_tester, :yamamoto) }

  describe 'full_name' do
    it 'first_name last_nameの形式にて文字列を返却すること' do
      expect(john_doe.full_name()).to eq('John Doe')
      expect(yamada.full_name()).to eq('John Yamada')
    end
  end

  describe 'self_introduce' do
    it '自己紹介を行うこと' do
      #expect(sato.self_introduce()).to eq('My name is Sugar Sato. I\'m from Okinawa Naha.')
      expect(suzuki.self_introduce()).to eq('My name is Siro Suzuki. I\'m from Kanagawa Yokohama.')
      #expect(tanaka.self_introduce()).to eq('My name is Taro Tanaka. I\'m from Hokkaido Sapporo.')
      expect(yamamoto.self_introduce()).to eq('My name is Eiji Yamamoto. I\'m from Hokkaido Sapporo.')
    end
  end
end
