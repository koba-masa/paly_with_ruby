FactoryBot.define do
  factory :factory_bot_tester, class: 'FactoryBotTester' do
    first_name { 'John' }
    last_name { 'Doe' }
    birthplace_prefcture { 'Saitama' }
    birthplace_city { 'Saitama' }

    trait :yamada do
      last_name { 'Yamada' }
    end

    trait :kanagawa do
      birthplace_prefcture { 'Kanagawa' }
      birthplace_city { 'Yokohama' }
    end

    # やりたいこと
    #   呼び出し側で複数traitを指定してデータを構築するのではなく、
    #   FactoryBot側で構築したものを返却したい。
    #   かつ、部品化したい。
    #   さらに、その子

    ## 方法1：traitをネストさせる
    ## 結果 ：子のtraitは定義されない
    ##        => KeyError: Trait not registered: "sato"
    trait :okinawa do
      birthplace_prefcture { 'Okinawa' }
      birthplace_city { 'Naha' }

      trait :sato do
        first_name { 'Sugar' }
        last_name { 'Sato' }
      end
    end

    ## 方法2
    trait :suzuki do
      kanagawa
      first_name { 'Siro' }
      last_name { 'Suzuki' }
    end

    ## 方法3
    factory :hokkaido do
      trait :tanaka do
        first_name { 'Taro' }
        last_name { 'Tanaka' }
      end
    end

    ## 方法3
    tarit :aomori do
      factory :yamamoto do
        first_name { 'Eiji' }
        last_name { 'Yamamoto' }
      end
    end

  end

  # traitの記載位置
  #   factroyブロックの外に定義した場合、他のFactoryにて同じシンボルが定義されているとエラーとなる
  #    => actoryBot::DuplicateDefinitionError: Trait already registered: yamada
  # trait :yamada do
  #   last_name { 'Yamada' }
  # end
end