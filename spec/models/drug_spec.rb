require 'rails_helper'

RSpec.describe Drug, type: :model do
  it { is_expected.to have_many(:prescriptions) }
  it { is_expected.to validate_presence_of(:title) }
end
