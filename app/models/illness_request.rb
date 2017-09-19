class IllnessRequest < ActiveRecord::Base
  belongs_to :patient
  has_one :illness
end
