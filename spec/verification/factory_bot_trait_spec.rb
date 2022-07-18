require './spec/factories/prefecture'

RSpec.describe do
  describe 'trait' do
    describe '定義の重複' do
      context 'FactoryBot.define直下にて定義が重複している場合' do
        it 'FactoryBot::DuplicateDefinitionErrorが発生すること' do
          expect do
            require './spec/factories/city'
          end.to raise_error(FactoryBot::DuplicateDefinitionError)
          # FactoryBot::DuplicateDefinitionError:
          #  Trait already registered: duplication_test
        end

        # おまけ: factoryブロックの外にあるtraitを指定した場合にどうなるのか
        context '第一引数に指定した場合' do
          it 'KeyErrorが発生すること' do
            expect do
              FactoryBot.build(:duplication_test)
            end.to raise_error(KeyError)
            # KeyError:
            #   Factory not registered: "duplication_test"
          end
        end

        context '第二引数に指定した場合' do
          let(:prefecture) { FactoryBot.build(:prefecture, :duplication_test) }

          it '第一引数に指定したインスタンスが生成されていること' do
            expect(prefecture.instance_of?(Prefecture)).to be_truthy
            expect(prefecture.name).to eq '重複テスト'
          end
        end
      end

      context 'factoryブロック内にて重複している場合' do
        let(:prefecture) { FactoryBot.build(:prefecture, :gifu) }

        it '先に定義されたものが優先されていること' do
          expect(prefecture.name).to eq 'old岐阜県'
          # trait :gifu do
          #   code { '21' }
          #   name { 'old岐阜県' }
          # end
          #
          # trait :gifu do
          #   code { '21' }
          #   name { '岐阜県' }
          # end
        end
      end
    end
  end
end
