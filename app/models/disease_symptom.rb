class DiseaseSymptom < ActiveRecord::Base
  belongs_to :disease
  belongs_to :symptom
end
