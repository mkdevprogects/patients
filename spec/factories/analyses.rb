FactoryGirl.define do
  factory :analysis do
    sequence(:title) { |n| "Анализ #{n}" }
    conclusion 'норма'
  end
end
