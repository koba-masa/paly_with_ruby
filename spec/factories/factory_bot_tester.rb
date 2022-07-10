FactoryBot.define do
  factory :factory_bot_tester, class: 'FactoryBotTester' do
    first_name { 'John' }
    last_name { 'Doe' }

    trait :yamada do
      last_name { 'Yamada' }
    end

  # traitの記載位置
  #   factroyブロックの外に定義した場合、他のFactoryにて同じシンボルが定義されているとエラーとなる
  #    => actoryBot::DuplicateDefinitionError: Trait already registered: yamada
  # trait :yamada do
  #   last_name { 'Yamada' }
  # end
end