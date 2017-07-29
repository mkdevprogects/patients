FactoryGirl.define do
  factory :clinic do
    sequence(:title) { |n| "Клиника #{n}" }
    sequence(:email) { |n| "clinic#{n}@clinic.com" }
    # phone
    # address
  end
end
