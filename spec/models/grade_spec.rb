require 'rails_helper'

RSpec.describe Grade, type: :model do
  it 'может быть много врачей одной квалификации' do
    is_expected.to have_many(:doctors)
    end
end
