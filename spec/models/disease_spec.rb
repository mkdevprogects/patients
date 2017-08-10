require 'rails_helper'

RSpec.describe Disease, type: :model do
  subject { build(:disease) }

  it { is_expected.to validate_presence_of(:title) }

  it { is_expected.to validate_uniqueness_of(:icd_code) }

  it { is_expected.to have_many(:symptoms) }
  it { is_expected.to have_many(:specializations) }
  it { is_expected.to have_many(:illnesses) }

  context 'instance methods' do
    let!(:disease) {create(:disease)}
    let!(:specialization) {create(:specialization)}
    let!(:clinic_1) {create(:clinic)}
    let!(:clinic_2) {create(:clinic)}
    let!(:doctor) {create(:doctor)}

    let!(:disease_2) {create(:disease, icd_code: 'AD01-FG42')}
    let!(:specialization_2) {create(:specialization)}
    let!(:doctor_2) {create(:doctor)}

    before do
      disease.specializations << specialization
      doctor.specializations << specialization
      clinic_1.doctors << doctor
      clinic_2.doctors << doctor

      disease_2.specializations << specialization_2
      doctor_2.specializations << specialization_2
      clinic_2.doctors << doctor_2
    end

    it 'метод clinics должен возвращать массив клиник, в которых лечат эту болезнь' do
      clinics = [ clinic_1, clinic_2 ]
      expect(disease.clinics.to_a).to be == clinics
    end

    it 'болезни лечатся в разных клиниках, если у них разные специализации' do
      expect(disease_2.clinics.to_a).not_to be == disease.clinics.to_a
    end
  end
end
