class Doctor < ActiveRecord::Base
  has_many :illnesses
  has_many :patients, through: :illnesses

  validates :email, presence: true
  validates :email, uniqueness: true
end
