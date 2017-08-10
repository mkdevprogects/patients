require 'rails_helper'

RSpec.describe Patient, type: :model do
  subject { build(:patient) }

  it { is_expected.to validate_presence_of(:email) }
  it { is_expected.to validate_uniqueness_of(:email).case_insensitive }
  it { is_expected.to have_many(:doctors) }
  it { is_expected.to have_many(:illnesses) }
end
