require 'rails_helper'

RSpec.describe Doctor, type: :model do
  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_presence_of(:surname) }
  it { is_expected.to validate_presence_of(:email) }

  it { is_expected.to validate_uniqueness_of(:email) }

  it { is_expected.to have_many(:patients) }
  it { is_expected.to have_many(:clinics) }
  it { is_expected.to have_many(:specializations) }
  it { is_expected.to have_many(:grades) }
  it { is_expected.to have_many(:visits) }
  it { is_expected.to have_many(:prescriptions) }
end
