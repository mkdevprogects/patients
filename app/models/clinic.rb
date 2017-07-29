class Clinic < ActiveRecord::Base
  has_many :practices
  has_many :doctors, through: :practices

  validates :title, presence: true
  validates :email, presence: true
  validates :email, uniqueness: true
end
