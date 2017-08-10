FactoryGirl.define do
  factory :prescription do
    sequence(:recommendations) { Faker::Matz.quote }
    drug
    doctor
    illness
  end
end
