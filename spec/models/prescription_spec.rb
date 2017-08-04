require 'rails_helper'

RSpec.describe Prescription, type: :model do
  it { is_expected.to belong_to :doctor }
  it { is_expected.to belong_to :illness }
  it { is_expected.to belong_to :drugs }

  it { is_expected.to validate_presence_of(:drug_id) }
end
