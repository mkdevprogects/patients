prescriptions = [
    { recommendations: Faker::Matz.quote, drug_id: Drug.first.id },
    { recommendations: Faker::Matz.quote, drug_id: Drug.find(2).id },
    { recommendations: Faker::Matz.quote, drug_id: Drug.find(3).id },
    { recommendations: Faker::Matz.quote, drug_id: Drug.find(4).id },
    { recommendations: Faker::Matz.quote, drug_id: Drug.find(5).id },
    { recommendations: Faker::Matz.quote, drug_id: Drug.find(1).id },
    { recommendations: Faker::Matz.quote, drug_id: Drug.find(2).id },
    { recommendations: Faker::Matz.quote, drug_id: Drug.find(3).id },
    { recommendations: Faker::Matz.quote, drug_id: Drug.find(4).id },
    { recommendations: Faker::Matz.quote, drug_id: Drug.find(5).id }
]

prescriptions.each do |params|
  Prescription.create!(params)
end
