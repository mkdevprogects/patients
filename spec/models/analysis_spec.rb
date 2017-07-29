require 'rails_helper'

RSpec.describe Analysis, type: :model do
  it { is_expected.to validate_presence_of(:title) }
end
