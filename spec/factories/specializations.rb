FactoryGirl.define do
  factory :specialization do
    title 'Терапевт'
    code /[a-z]{8}/
  end
end
