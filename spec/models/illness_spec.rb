require 'rails_helper'

RSpec.describe Illness, type: :model do
  it { is_expected.to belong_to :patient }
  it { is_expected.to belong_to :doctor }

  it 'у одной болезни может быть много симптомов' do
    is_expected.to have_many(:symptoms)
  end
end
