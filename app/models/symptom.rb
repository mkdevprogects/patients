class Symptom < ActiveRecord::Base
#   Словарь симптомов
  has_many :illness_symptoms
  has_many :illnesses, through: :illness_symptoms
end
