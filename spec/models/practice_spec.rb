require 'rails_helper'

RSpec.describe Practice, type: :model do
  it { is_expected.to belong_to :clinic }
  it { is_expected.to belong_to :doctor }
end
