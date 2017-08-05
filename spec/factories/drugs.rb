FactoryGirl.define do
  factory :drug do
    sequence(:title) { |n| "Какое-то лекарство #{n}" }
    description
  end
end
