class Diagnosis < ActiveRecord::Base
  belongs_to :disease
  belongs_to :illness
end
