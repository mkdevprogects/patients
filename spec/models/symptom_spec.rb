require 'rails_helper'

RSpec.describe Symptom, type: :model do
  it { is_expected.to validate_presence_of(:title) }

  it { is_expected.to have_many(:illnesses) }
  it { is_expected.to have_many(:diseases) }
  it { is_expected.to have_many(:illness_request_symptoms) }

  describe '#created_at' do
    let(:illness) { create(:illness) }
    let(:symptom) { create(:symptom) }

    before { illness.symptoms << symptom }
    let(:illness_symptom) { illness.illness_symptoms.last }

    it 'returns last symptom occurence' do
      puts
      puts "DEBUG"
      puts "DEBUG"
      puts "DEBUG"
      puts "DEBUG"
      puts "DEBUG"
      puts "symptom: #{symptom.inspect}"
      puts "symptom.illnesses: #{symptom.illnesses.inspect}"
      puts "illness: #{illness.inspect }"
      puts "illness.symptoms: #{illness.symptoms.inspect }"
      puts "illness_symptom: #{illness_symptom.inspect}"
      puts "symptom.first_occurence_date: #{symptom.first_occurence_date.inspect }"
      puts "illness_symptom.created_at: #{illness_symptom.created_at.inspect }"
      puts "DEBUG"
      puts "DEBUG"
      puts "DEBUG"
      puts "DEBUG"
      puts "DEBUG"
      expect(symptom.first_occurence_date).to eq illness_symptom.created_at
    end
  end
end
