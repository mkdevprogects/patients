require 'rails_helper'

RSpec.describe Clinic, type: :model do
  before(:each) do
    @clinic = Clinic.new
  end

  context 'валидация email клиники' do

    subject(:clinic) { @clinic }

    it 'поле email должно быть заполнено' do
      is_expected.to validate_presence_of(:email)
    end

    it 'email должен быть уникальным' do
      is_expected.to validate_uniqueness_of(:email)
    end

    it 'клиника должна сохранятья в базу, если у неё указан email' do
      clinic.email = email
      expect(clinic.save).to be_truthy
    end

    it 'клиника не должна сохранятья в базу, если у неё не указан email' do
      expect(clinic.save).to be_falsey
    end
  end

  context 'наличие у клиники, работающих в ней врачей' do

    before(:each) do
      @clinic.doctors << Doctor.new(email: email)
    end

    subject(:clinic) { @clinic.email = email; @clinic }
    subject(:doctor) { Doctor.new(email: email) }

    it 'клиника может добавлять доктора в список врачей клиники' do
      expect(clinic.doctors).not_to be_nil
    end

    it 'в клинике может работать много врачей' do
      clinic.doctors << doctor
      expect(clinic.doctors.size).to be > 1
    end
  end
end
