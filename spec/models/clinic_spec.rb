require 'rails_helper'

RSpec.describe Clinic, type: :model do
  it { is_expected.to validate_presence_of(:title) }
  it { is_expected.to validate_presence_of(:email) }

  it { is_expected.to validate_uniqueness_of(:email) }

  it { is_expected.to have_many(:doctors) }
  it { is_expected.to have_many(:visits) }

end
