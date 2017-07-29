require 'rails_helper'

RSpec.describe Symptom, type: :model do
  it { is_expected.to validate_presence_of(:title) }

  it 'один симптом может принадлежать разным болезням' do
    is_expected.to have_many(:illnesses)
  end
end
