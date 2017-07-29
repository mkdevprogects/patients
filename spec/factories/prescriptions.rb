FactoryGirl.define do
  factory :prescription do
    sequence(:recommendations) { Faker::Matz.quote }
  end
end
