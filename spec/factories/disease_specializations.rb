FactoryGirl.define do
  factory :disease_specialization do
    sequence(:disease_id) { |n| n }
    sequence(:specialization_id) { |n| n }
  end
end
