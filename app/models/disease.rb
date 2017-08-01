class Disease < ActiveRecord::Base
  has_many :disease_symptoms
  has_many :symptoms, through: :disease_symptoms

  has_many :disease_specializations
  has_many :specializations, through: :disease_specializations

  validates :title, presence: true
  validates :icd_code, uniqueness: true
end
