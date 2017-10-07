FactoryGirl.define do
  factory :illness_request do
    patient
    illness
    sequence(:distance) { rand(1..30) }
    # sequence(:admissible_cost) { (rand(1..100)..rand(101..1000)) }
    # sequence(:allowable_reception_time) { (Time.now..(Time.now + 7200)) }
    after(:build) { |illness_request| illness_request.symptoms << create(:symptom) }
  end
end
