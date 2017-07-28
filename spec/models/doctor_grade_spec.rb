require 'rails_helper'

RSpec.describe DoctorGrade, type: :model do
  it { is_expected.to belong_to :grade }
  it { is_expected.to belong_to :doctor }
end
