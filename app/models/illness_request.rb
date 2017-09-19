class IllnessRequest < ActiveRecord::Base
  belongs_to :patient
  has_one :illness

  has_many :illness_request_symptoms
  has_many :symptoms, through: :illness_request_symptoms
end
