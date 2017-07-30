FactoryGirl.define do
  factory :doctor do
    name
    surname
    # patronymic
    # phone
    sequence(:email) { |n| "doctor#{n}@doctor.com" }
  end
end
