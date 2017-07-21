class Patient < ActiveRecord::Base
  validates :phone, presence: true, if: :email.nil?
  validates :email, presence: true, if: :phone.nil?
  validates :email, :phone, uniqueness: true
end