FactoryGirl.define do
  factory :event do
    name              "Wadlopen"
    description       { Faker::Lorem.sentence(40) }
    location          "Den Haag"
    price             { Faker::Commerce.price }
    capacity          25
    includes_food     true
    includes_drinks   true
    starts_at         { Faker::Commerce.datetime }
    ends_at           { Faker::Commerce.datetime }
    user              { build(:user) }

    trait :active do
      active true
    end

    trait :inactive do
      active false
    end
  end
end
