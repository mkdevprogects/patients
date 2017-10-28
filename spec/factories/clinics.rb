FactoryGirl.define do
  factory :clinic do
    sequence(:title) { |n| "Клиника #{n}" }
    sequence(:email) { |n| "clinic#{n}@clinic.com" }
    address
    latitude
    longitude
    # phone
  end
end
