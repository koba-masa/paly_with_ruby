require './src/models/factory_bot/tester'
require './spec/factories/factory_bot/tester'
require './spec/factories/factory_bot/trait_tester'

RSpec.describe FactoryBotTester, type: :model do
  let(:john_doe) { FactoryBot.build(:factory_bot_tester) }
  let(:yamada) { FactoryBot.build(:factory_bot_tester, :yamada) }

  describe 'full_name' do
    it 'first_name last_nameの形式にて文字列を返却すること' do
      expect(john_doe.full_name()).to eq('John Doe')
      expect(yamada.instance_of?(FactoryBotTester)).to be_truthy
      expect(yamada.full_name()).to eq('John Yamada')
    end
  end

end
