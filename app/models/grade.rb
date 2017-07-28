class Grade < ActiveRecord::Base
  has_many :doctor_grades
  has_many :doctors, through: :doctor_grades
end
