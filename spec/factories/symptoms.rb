FactoryGirl.define do
  factory :symptom do
    sequence(:title) { |n| "Какой-то симптом #{n}" }
    description
  end
end
