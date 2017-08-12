require 'spec_helper'

describe HasHumanDate do
  include HasHumanDate
  subject { IllnessDecorator.new(illness) }
  let(:illness) { create(:illness, symptoms: [create(:symptom), create(:symptom)], diseases: [create(:disease)]) }
  let!(:symptom) { SymptomDecorator.new(illness.symptoms.first) }
  let!(:visit_1) { create(:visit, illness_id: illness.id) }
  let!(:visit) { VisitDecorator.new(visit_1) }
  let!(:visit_2) { create(:visit, illness_id: illness.id) }
  let!(:prescription_1) { create(:prescription, illness_id: illness.id) }

  it 'date should return date on format "day - month - year"' do
    expect(date(subject.created_at)).to eq illness.created_at.strftime("%d - %m - %Y")
  end

  it 'human_created_at should return string, where date eq obj.created_at' do
    expect(subject.human_created_at).to eq date(illness.created_at)
  end

  it 'human_date_time should return date on format "day - month - year"' do
    expect(visit.human_date_time).to be == date(visit_1.date_time)
  end

  it 'human_first_occurence_date should return date on format "day - month - year"' do
    expect(symptom.human_first_occurence_date).to be == date(symptom.first_occurence_date)
  end
end
