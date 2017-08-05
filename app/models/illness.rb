class Illness < ActiveRecord::Base
  belongs_to :patient
  belongs_to :doctor

  has_many :illness_symptoms
  has_many :symptoms, through: :illness_symptoms

  has_many :visits

  has_many :prescriptions

  has_many :diagnoses
  has_many :diseases, through: :diagnoses

  def clinic
    visits.last.clinic
  end
end
