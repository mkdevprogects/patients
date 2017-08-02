class Visit < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :illness
  belongs_to :clinic

  validates :date_time, presence: true
end
