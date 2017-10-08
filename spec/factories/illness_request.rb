FactoryGirl.define do
  factory :illness_request do
    patient
    illness
    sequence(:distance) { rand(1..30) }
    after(:build) { |illness_request| illness_request.symptoms << create(:symptom) }
  end
end
