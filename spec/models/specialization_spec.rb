require 'rails_helper'

RSpec.describe Specialization, type: :model do
  it 'может быть много врачей одной специализации' do
    is_expected.to have_many(:doctors)
  end
end
