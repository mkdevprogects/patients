class IllnessRequestSymptom < ActiveRecord::Base
  belongs_to :illness_request
  belongs_to :symptom
end
