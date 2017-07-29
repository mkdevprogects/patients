FactoryGirl.define do
  factory :prescription do
    sequence(:recommendations) { |n| "Раз #{n} в день" }
  end
end
