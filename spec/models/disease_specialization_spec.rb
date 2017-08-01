require 'rails_helper'

RSpec.describe DiseaseSpecialization, type: :model do
  it { is_expected.to belong_to :disease }
  it { is_expected.to belong_to :specialization }
end
