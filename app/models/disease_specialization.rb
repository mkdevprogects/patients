class DiseaseSpecialization < ActiveRecord::Base
  belongs_to :disease
  belongs_to :specialization
end
