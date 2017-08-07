require 'rails_helper'

RSpec.describe Specialization, type: :model do
  it { is_expected.to have_many(:doctors) }
  it { is_expected.to have_many(:diseases) }

  it { is_expected.to validate_presence_of(:title) }
  it { is_expected.to validate_presence_of(:code) }
end
