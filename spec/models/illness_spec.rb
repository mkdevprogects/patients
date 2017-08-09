require 'rails_helper'

RSpec.describe Illness, type: :model do
  it { is_expected.to belong_to :patient }
  it { is_expected.to belong_to :doctor }
  it { is_expected.to have_many(:symptoms) }
  it { is_expected.to have_many(:visits) }
  it { is_expected.to have_many(:prescriptions) }
  it { is_expected.to have_many(:diagnoses) }

  let!(:clinic_1) { create(:clinic) }
  let!(:clinic_2) { create(:clinic) }
  let!(:illness) do
    create(:illness,
           visits: [
               create(:visit, clinic: clinic_2),
               create(:visit, clinic: clinic_1)
           ])
  end

  it 'метод clinic возвращает клинку из посленего приема по текущей болезни' do
    expect(illness.clinic).to be == clinic_1
  end
end
