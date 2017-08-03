require 'rails_helper'

RSpec.describe Grade, type: :model do
  it { is_expected.to have_many(:doctors) }
end
