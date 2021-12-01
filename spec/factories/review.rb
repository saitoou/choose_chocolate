FactoryBot.define do
  factory :review do
    association :chocolate
    sweet { "1" }
    cacao { "1" }
    appearance { "1" }
    texture { "1" }
    melt { "1" }
  end
end
