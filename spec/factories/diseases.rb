FactoryGirl.define do
  factory :disease do
    sequence(:title) { |n| "Болезнь #{n}" }
    description
    sequence(:icd_code) { /[A-Z][0-9]{2}-[A-Z][0-9]{2}/ }
  end
end
