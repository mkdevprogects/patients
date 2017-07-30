require 'rails_helper'

RSpec.describe IllnessSymptom, type: :model do
  it { is_expected.to belong_to :illness }
  it { is_expected.to belong_to :symptom }
end
