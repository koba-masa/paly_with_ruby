FactoryBot.define do
  factory :nested_data_prefecture, class: NestedData::Prefecture do
    deleted { false }
    hamamatsu

    factory :shiga do
      name { '滋賀県' }
      hikone

      factory :omi_hachiman do
        city_name { '近江八幡市' }
      end

      trait :hikone do
        city_name { '彦根市' }
      end

    end

    trait :hamamatsu do
      name { '滋賀県' }
      city_name { '浜松市' }
    end

    trait :gihu do
      name { '岐阜県' }
      gifushi

      trait :gifushi do
        city_name { '岐阜市' }
      end
    end

    trait :deleted do
      deleted { true }
    end
  end
end