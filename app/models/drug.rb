class Drug < ActiveRecord::Base
  has_many :prescriptions

  validates :title, presence: true
end
