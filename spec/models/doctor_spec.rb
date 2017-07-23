require 'rails_helper'

RSpec.describe Doctor, type: :model do

  context 'валидация email врача' do

    it 'поле email должно быть заполнено' do
      is_expected.to validate_presence_of(:email)
    end

    it 'email должен быть уникальным' do
      is_expected.to validate_uniqueness_of(:email)
    end
  end

  context 'наличие "своих" пациентов у врача' do

    it 'врач может добавлять пациентов в список "своих" пациентов' do
      is_expected.to have_many(:patients)
    end
  end

  context 'наличие нескольких мест работы у врача' do

    it 'у врача может быть много мест работы' do
      is_expected.to have_many(:clinics)
    end
  end
end
