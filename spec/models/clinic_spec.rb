require 'rails_helper'

RSpec.describe Clinic, type: :model do
  it { is_expected.to validate_presence_of(:title) }
  it { is_expected.to validate_presence_of(:email) }

  it { is_expected.to validate_uniqueness_of(:email) }

  it { is_expected.to have_many(:doctors) }
  it { is_expected.to have_many(:visits) }

  let(:clinic) { create(:clinic) }

  it 'метод specializations_titles должен возвращать массив названий клиник' do
    titles = clinic.doctors.reduce([]) do |result, doctor|
      result << doctor.specializations.pluck(:title)
    end.flatten.uniq

    expect(titles).to be == clinic.specializations_titles
  end
end
