require 'spec_helper'

describe HasHumanDate do
  describe '#human_created_at' do
    subject { IllnessDecorator.new(illness) }
    let(:illness) { create(:illness) }

    it 'human_created_at should return string, where date eq obj.created_at' do
      expect(subject.human_created_at).to eq illness.created_at.strftime("%d - %m - %Y")
    end
  end

  describe '#human_date_time' do
    subject { VisitDecorator.new(visit) }
    let(:visit) { create(:visit) }

    it 'human_date_time should return date on format "day - month - year"' do
      expect(subject.human_date_time).to eq visit.date_time.strftime("%d - %m - %Y")
    end
  end

  describe '#human_first_occurence_date' do
    subject { SymptomDecorator.new(symptom) }
    let(:symptom) { create(:symptom) }

    before { create(:illness_symptom, symptom: symptom) }

    it 'human_first_occurence_date should return date on format "day - month - year"' do
      expect(subject.human_first_occurence_date).to eq symptom.first_occurence_date.strftime("%d - %m - %Y")
    end
  end
end
