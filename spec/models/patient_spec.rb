require 'rails_helper'

RSpec.describe Patient, type: :model do

  def email
    "qwerty#{rand(1000)}@gmail.com"
  end

  before(:each) do
    @patient = Patient.new
  end

  context 'валидация email пациента' do

    subject(:patient) { @patient }

    it 'patients email not tot be nil' do
      patient.email = email
      expect(patient.email).not_to be_nil
    end

    it 'patient should have uniqueness email' do
      #   тут должен быть тест на уникальность email пациента, но я не нашел способа использовать БД
    end

    it 'пациент должен сохранятья в базу, если у него указан email' do
      patient.email = email
      expect(patient.save).to be_truthy
    end

    it 'пациент не должен сохранятья в базу, если у него не указан email' do
      expect(patient.save).to be_falsey
    end
  end

  context 'наличие "своих" врачей у пациента' do

    before(:each) do
      @patient.doctors << Doctor.new(email: email)
    end

    subject(:patient) { @patient.email = email; @patient }
    subject(:doctor) { Doctor.new(email: email) }

    it 'пациент может добавлять доктора в "свои" врачи' do
      expect(patient.doctors).not_to be_nil
    end

    it 'у пациента может быть много врачей' do
      patient.doctors << doctor
      expect(patient.doctors.size).to be > 1
    end
  end
end
