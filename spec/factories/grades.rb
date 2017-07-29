FactoryGirl.define do
  factory :grade do
    sequence(:title) { |n| "Врач #{n} категории" }
  end
end
