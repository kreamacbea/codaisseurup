FactoryGirl.define do
  factory :event do
    name              { Faker::Lorem.words(3) }
    description       { Faker::Lorem.sentence(40) }
    location          { Faker::Address.city }
    price             { Faker::Commerce.price }
    capacity          25
    includes_food     true
    includes_drinks   true
    user              { build(:user) }

    trait :active do
      active true
    end

    trait :inactive do
      active false
    end
  end
end
