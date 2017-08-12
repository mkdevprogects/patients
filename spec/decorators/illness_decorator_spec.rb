require 'spec_helper'

describe IllnessDecorator do
  subject { described_class.new(illness) }
  let(:illness) { create(:illness, symptoms: [create(:symptom), create(:symptom)], diseases: [create(:disease)]) }
  let!(:visit_1) { create(:visit, illness_id: illness.id) }
  let!(:visit_2) { create(:visit, illness_id: illness.id) }
  let!(:prescription_1) { create(:prescription, illness_id: illness.id) }

  # Совершенно не уверен, что это надо делать так
  it 'visits should return decorate object' do
    expect(subject.visits).to be_decorated
  end

  it 'symptoms should return decorate object' do
    expect(subject.symptoms).to be_decorated
  end

  it 'prescriptions should return decorate object' do
    expect(subject.prescriptions).to be_decorated
  end

  it 'doctors_surname_name should return string, contains doctor surname and doctor first name' do
    expect(subject.doctors_surname_name).to be == "#{illness.doctor.surname} #{illness.doctor.name}"
  end

  it 'first_disease_title should return title' do
    expect(subject.first_disease_title).to eq illness.diseases.first.title
  end
end
