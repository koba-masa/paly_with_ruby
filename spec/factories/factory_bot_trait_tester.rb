FactoryBot.define do
  factory :factory_bot_trait_tester, class: 'FactoryBotTraitTester' do
    last_name { "John Doe" }
  end

  trait :yamada do
    last_name { "Taro Yamada" }
  end
end
