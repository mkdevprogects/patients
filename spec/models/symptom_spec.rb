require 'rails_helper'

RSpec.describe Symptom, type: :model do
  it 'один симптом может принадлежать разным болезням' do
    is_expected.to have_many(:illnesses)
  end
end
