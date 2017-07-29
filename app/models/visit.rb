class Visit < ActiveRecord::Base
  validates :date_time, presence: true
end
