class Specialization < ActiveRecord::Base
  has_many :doctor_specializations
  has_many :doctors, through: :doctor_specializations

  has_many :disease_specializations
  has_many :diseases, through: :disease_specializations

  validates :title, :code, presence: true
end
