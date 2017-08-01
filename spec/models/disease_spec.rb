require 'rails_helper'

RSpec.describe Disease, type: :model do
  it { is_expected.to validate_presence_of(:title) }
  it { is_expected.to validate_uniqueness_of(:icd_code) }

end
