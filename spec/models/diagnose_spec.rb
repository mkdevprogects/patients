require 'rails_helper'

RSpec.describe Diagnose, type: :model do
  it { is_expected.to belong_to :disease }
  it { is_expected.to belong_to :illness }
end
