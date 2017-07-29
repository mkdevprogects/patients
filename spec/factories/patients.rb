FactoryGirl.define do
  factory :patient do
    name
    surname
    # patronymic
    # phone
    sequence(:email) { |n| "patient#{n}@patient.com" }
    password '123123'
  end
end
