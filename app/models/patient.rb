class Patient < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :illnesses
  has_many :doctors, through: :illnesses

  has_many :illness_requests

  validates :address, :latitude, :longitude, presence: true
  validates :email, presence: true, uniqueness: true
end
