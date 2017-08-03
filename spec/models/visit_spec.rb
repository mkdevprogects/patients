require 'rails_helper'

RSpec.describe Visit, type: :model do
  it { is_expected.to validate_presence_of(:date_time) }

  it { is_expected.to belong_to :doctor }
  it { is_expected.to belong_to :clinic }
  it { is_expected.to belong_to :illness }
end
