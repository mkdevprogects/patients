require 'rails_helper'

RSpec.describe Illness, type: :model do
  it { is_expected.to belong_to :patient }
  it { is_expected.to belong_to :doctor }
  it { is_expected.to have_many(:symptoms) }
  it { is_expected.to have_many(:visits) }
  it { is_expected.to have_many(:prescriptions) }
end
