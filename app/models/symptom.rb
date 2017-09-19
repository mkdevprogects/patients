class Symptom < ActiveRecord::Base
#   Словарь симптомов
  has_many :illness_symptoms
  has_many :illnesses, through: :illness_symptoms

  has_many :disease_symptoms
  has_many :diseases, through: :disease_symptoms

  has_many :illness_request_symptoms
  has_many :illness_requests, through: :illness_request_symptoms

  validates :title, presence: true

  def first_occurence_date
    illness_symptoms.find(self.id).created_at
  end
end
