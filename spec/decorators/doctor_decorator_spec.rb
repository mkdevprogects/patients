require 'spec_helper'

describe DoctorDecorator, type: :decorator do
  subject { described_class.new(obj) }
  let(:obj) { create(:doctor) }

  it 'should return tiitle' do
    expect(subject.title).to eq doctor.name
  end
end
