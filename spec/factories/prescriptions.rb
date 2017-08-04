FactoryGirl.define do
  factory :prescription do
    sequence(:recommendations) { Faker::Matz.quote }
    drug_id 1
  end
end
