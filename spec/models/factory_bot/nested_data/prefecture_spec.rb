require './src/models/factory_bot/nested_data/prefecture'
require './spec/factories/factory_bot/nested_data/prefecture'

RSpec.describe NestedData::Prefecture, type: :model do
  let(:top_default) { FactoryBot.build(:nested_data_prefecture) }
  let(:first_floor_factory) { FactoryBot.build(:shiga) }
  let(:second_floor_trait) { FactoryBot.build(:omi_hachiman) }
  let(:trait) { FactoryBot.build(:nested_data_prefecture, :gihu) }

  describe 'full_address' do
    it '都道府県市区町村の形式にて文字列を返却すること' do
      #
      expect(top_default.full_address).to eq '滋賀県浜松市'
      expect(top_default.deleted).to be_falsey
      #
      expect(first_floor_factory.full_address).to eq '滋賀県彦根市'
      #
      expect(second_floor_trait.full_address).to eq '滋賀県近江八幡市'
      #
      expect(trait.full_address).to eq '岐阜県岐阜市'
    end
  end

end
