class Clinic < ActiveRecord::Base
  has_many :practices
  has_many :doctors, through: :practices

  validates :email, presence: true
  validates :email, uniqueness: true
end
