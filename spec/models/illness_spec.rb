require 'rails_helper'

RSpec.describe Illness, type: :model do
  it { is_expected.to belong_to :patient }
  it { is_expected.to belong_to :doctor }
end
