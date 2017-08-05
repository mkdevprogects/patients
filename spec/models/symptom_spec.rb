require 'rails_helper'

RSpec.describe Symptom, type: :model do
  it { is_expected.to validate_presence_of(:title) }

  it { is_expected.to have_many(:illnesses) }
  it { is_expected.to have_many(:diseases) }
end
