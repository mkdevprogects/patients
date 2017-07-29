FactoryGirl.define do
  sequence :name do |n|
    "Имя#{n}"
  end

  sequence :surname do |n|
    "Фамилия#{n}"
  end

  sequence :description do |n|
    "Какое-то описание чего-то #{n}"
  end
end
