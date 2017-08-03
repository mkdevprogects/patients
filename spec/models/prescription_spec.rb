require 'rails_helper'

RSpec.describe Prescription, type: :model do
  it { is_expected.to belong_to :doctor }
  it { is_expected.to belong_to :illness }
end
