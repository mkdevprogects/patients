require 'rails_helper'

RSpec.describe Symptom, type: :model do
  it { is_expected.to validate_presence_of(:title) }

  it { is_expected.to have_many(:illnesses) }
  it { is_expected.to have_many(:diseases) }

  let(:symptom) { create(:symptom) }

  # этот тест всегда падает
  it 'дата отдаваемая created_at должна быть эквивалентна дате .illness_symptoms.find(self.id).created_at' do
    expect(symptom.illness_symptoms.find(symptom.id).created_at).to be == symptom.created_at
  end
end
