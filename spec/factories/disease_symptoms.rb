FactoryGirl.define do
  factory :disease_symptom do
    sequence(:disease_id) { |n| n }
    sequence(:symptom_id) { |n| n }
  end
end
