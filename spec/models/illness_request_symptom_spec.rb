require 'rails_helper'

RSpec.describe IllnessRequestSymptom, type: :model do
  it { is_expected.to belong_to :illness }
  it { is_expected.to belong_to :symptom }
end
