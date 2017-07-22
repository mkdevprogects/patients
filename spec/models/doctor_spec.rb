require 'rails_helper'

RSpec.describe Doctor, type: :model do
  before(:each) do
    @doctor = Doctor.new
  end

  context 'валидация email врача' do

    subject(:doctor) { @doctor }

    it 'поле email должно быть заполнено' do
      is_expected.to validate_presence_of(:email)
    end

    it 'email должен быть уникальным' do
      is_expected.to validate_uniqueness_of(:email)
    end

    it 'врач должен сохранятья в базу, если у него указан email' do
      doctor.email = email
      expect(doctor.save).to be_truthy
    end

    it 'врач не должен сохранятья в базу, если у него не указан email' do
      expect(doctor.save).to be_falsey
    end
  end

  context 'наличие "своих" пациентов у врача' do

    before(:each) do
      @doctor.patients << Patient.new(email: email)
    end

    subject(:doctor) { @doctor.email = email; @doctor }
    let(:patient) { Patient.new(email: email) }

    it 'врач может добавлять пациента в список "своих" пациентов' do
      expect(doctor.patients).not_to be_nil
    end

    it 'у врача может быть много пациентов' do
      doctor.patients << patient
      expect(doctor.patients.size).to be > 1
    end
  end

  context 'наличие нескольких мест работы у врача' do

    before(:each) do
      @doctor.clinics << Clinic.new(email: email)
    end

    subject(:doctor) { @doctor.email = email; @doctor }
    let(:clinic) { Clinic.new(email: email) }

    it 'врач может добавлять клинику в список мест работы' do
      expect(doctor.clinics).not_to be_nil
    end

    it 'у врача может быть много мест работы' do
      doctor.clinics << clinic
      expect(doctor.clinics.size).to be > 1
    end
  end
end
