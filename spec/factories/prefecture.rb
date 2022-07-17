require './src/models/prefecture'

FactoryBot.define do
  factory :prefecture, class: Prefecture do

    trait :hokkaido do
      code { '01' }
      name { '北海道' }
    end

    trait :gifu do
      code { '21' }
      name { 'old岐阜県' }
    end

    trait :gifu do
      code { '21' }
      name { '岐阜県' }
    end
  end

  trait :duplication_test do
    name { '重複テスト' }
  end
end
