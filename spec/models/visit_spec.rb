require 'rails_helper'

RSpec.describe Visit, type: :model do
  it { is_expected.to validate_presence_of(:date_time) }

  it { is_expected.to belong_to :doctor }
  it { is_expected.to belong_to :clinic }
  it { is_expected.to belong_to :illness }

  let(:visit) { create(:visit) }
  it 'строка отдаваемая doctor_surname должна быть эквивалентна строке .doctor.surname' do
    expect(visit.doctor.surname).to be == visit.doctor_surname
  end

  it 'строка отдаваемая doctor_name должна быть эквивалентна строке .doctor.name' do
    expect(visit.doctor.name).to be == visit.doctor_name
  end

  it 'строка отдаваемая doctor_name должна быть эквивалентна строке .doctor.surname' do
    expect(visit.clinic.title).to be == visit.clinic_title
  end
end
