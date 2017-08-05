require 'rails_helper'

RSpec.describe Prescription, type: :model do
  it { is_expected.to belong_to :doctor }
  it { is_expected.to belong_to :illness }
  it { is_expected.to belong_to :drug }

  it { is_expected.to validate_presence_of(:drug_id) }

  let(:prescription) { create(:prescription) }

  it 'строка отдаваемая title должна быть эквивалентна строке .drug.title' do
    expect(prescription.drug.title).to be == prescription.title
  end
end
