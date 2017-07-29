FactoryGirl.define do
  factory :visit do
    date_time Faker::Time.between(DateTime.now - 1, DateTime.now + 10)
  end
end
