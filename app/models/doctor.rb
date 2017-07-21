class Doctor < ActiveRecord::Base
  has_many :illnesses
  has_many :patients, through: :illnesses

  has_many :practices
  has_many :clinics, through: :practices

  validates :email, presence: true
  validates :email, uniqueness: true
end
