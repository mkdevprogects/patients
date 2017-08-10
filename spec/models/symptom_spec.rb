require 'rails_helper'

RSpec.describe Symptom, type: :model do
  it { is_expected.to validate_presence_of(:title) }

  it { is_expected.to have_many(:illnesses) }
  it { is_expected.to have_many(:diseases) }

  describe '#created_at' do
    let(:illness) { create(:illness) }
    let(:symptom) { create(:symptom) }
    let(:illness_symptom) { illness.illness_symptoms.last }

    before { illness.symptoms << symptom }

    it 'returns last symptom occurence' do
      expect(symptom.first_occurence_date).to eq illness_symptom.created_at
    end
  end
end
