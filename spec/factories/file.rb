FactoryGirl.define do
  sequence :name do |n|
    Faker::StarTrek.character
  end

  sequence :surname do |n|
    Faker::LordOfTheRings.character
  end

  sequence :description do |n|
    Faker::Hobbit.quote
  end

  sequence(:address) { "#{Faker::Address.street_address}, #{Faker::Address.city}" }
  sequence(:latitude) { Faker::Address.latitude }
  sequence(:longitude) { Faker::Address.longitude }
end
