class Disease < ActiveRecord::Base
  has_many :disease_symptoms
  has_many :symptoms, through: :disease_symptoms

  validates :title, presence: true
  validates :icd_code, uniqueness: true
end
