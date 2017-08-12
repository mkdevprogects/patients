require 'spec_helper'

describe DoctorDecorator, type: :decorator do
  subject { described_class.new(obj) }
  let(:obj) { create(:doctor) }

  it 'should return specializations titles' do
    expect(subject.specializations_title).to eq obj.specializations.map(&:title).join(', ')
  end

  it 'should return clinics titles' do
    expect(subject.clinics).to eq obj.clinics.map(&:title).join(', ')
  end

  it 'should return first grade' do
    expect(subject.grade).to eq obj.grades.first&.title
  end

  it 'should return all grades' do
    expect(subject.grades).to eq obj.grades.map(&:title).join(', ')
  end

  # Эти тесты падают
  it 'should return "Врач"' do
    expect(subject.grade).to be == ' Врач'
  end

  it 'should return "Врач"' do
    expect(subject.grades).to be == ' Врач'
  end
end
