require 'rails_helper'

RSpec.describe DoctorSpecialization, type: :model do
  it { is_expected.to belong_to :specialization }
  it { is_expected.to belong_to :doctor }
end
