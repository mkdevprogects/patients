drugs = [
    {
        title: Faker::WorldOfWarcraft.hero, description: Faker::VentureBros.quote
    },
    {
        title: Faker::WorldOfWarcraft.hero, description: Faker::VentureBros.quote
    },
    {
        title: Faker::WorldOfWarcraft.hero, description: Faker::VentureBros.quote
    },
    {
        title: Faker::WorldOfWarcraft.hero, description: Faker::VentureBros.quote
    },
    {
        title: Faker::WorldOfWarcraft.hero, description: Faker::VentureBros.quote
    }
]

drugs.each do |params|
  Drug.create!(params)
end
