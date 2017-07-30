require 'rails_helper'

RSpec.describe Clinic, type: :model do
  it { is_expected.to validate_presence_of(:title) }

  context 'валидация email клиники' do
    it 'поле email должно быть заполнено' do
      is_expected.to validate_presence_of(:email)
    end

    it 'email должен быть уникальным' do
      is_expected.to validate_uniqueness_of(:email)
    end
  end

  context 'наличие у клиники, работающих в ней врачей' do
    it 'в клинике может работать много врачей' do
      is_expected.to have_many(:doctors)
    end
  end
end
