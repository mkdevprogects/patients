require 'rails_helper'

RSpec.describe IllnessRequest, type: :model do
  it { is_expected.to belong_to :patient }
  it { is_expected.to have_one :illness }
  it { is_expected.to have_many(:illness_request_symptoms) }
end
