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
    Clinic.joins(doctors: [specializations: [:diseases]]).where("diseases.id=?", self.id).uniq
  end
end
