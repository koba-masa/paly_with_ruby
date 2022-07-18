require './src/models/city'

FactoryBot.define do
  factory :city, class: City do

    trait :sapporo do
      name { '札幌市' }
    end

    trait :gifu do
      name { '岐阜市' }
    end
  end

  trait :duplication_test do
    name { '重複テスト' }
  end
end
