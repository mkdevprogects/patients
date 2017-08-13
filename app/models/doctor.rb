class Doctor < ActiveRecord::Base
  has_many :illnesses
  has_many :patients, through: :illnesses

  has_many :practices
  has_many :clinics, through: :practices

  has_many :doctor_specializations
  has_many :specializations, through: :doctor_specializations

  has_many :doctor_grades
  has_many :grades, through: :doctor_grades

  has_many :visits

  has_many :prescriptions

  validates :name, :surname, presence: true
  validates :email, presence: true, uniqueness: true

  ransack_alias :doctor, :name_or_surname_or_specializations_title_or_grades_title_or_clinics_title
end
