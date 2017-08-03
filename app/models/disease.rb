class Disease < ActiveRecord::Base
  has_many :disease_symptoms
  has_many :symptoms, through: :disease_symptoms

  has_many :disease_specializations
  has_many :specializations, through: :disease_specializations

  has_many :diagnoses
  has_many :illnesses, through: :diagnoses

  validates :title, presence: true
  validates :icd_code, uniqueness: true

  def clinics
    specializations.reduce([]) do |result, spec|
      result << spec_clinics(spec)
    end.flatten.uniq
  end


  private

  def spec_clinics(spec)
    spec.doctors.reduce([]) do |result, doctor|
      result << doctor.clinics
    end
  end
end
