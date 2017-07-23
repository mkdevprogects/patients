require 'rails_helper'

RSpec.describe Patient, type: :model do
  context 'валидация email пациента' do
    it 'поле email должно быть заполнено' do
      is_expected.to validate_presence_of(:email)
    end

    it 'email должен быть уникальным' do
      is_expected.to validate_uniqueness_of(:email)
    end
  end

  context 'наличие "своих" врачей у пациента' do
    it 'пациент может добавлять врачей в "мои"' do
      is_expected.to have_many(:doctors)
    end
  end
end
