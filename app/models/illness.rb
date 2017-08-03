class Illness < ActiveRecord::Base
  belongs_to :patient
  belongs_to :doctor

  has_many :illness_symptoms
  has_many :symptoms, through: :illness_symptoms

  has_many :visits

  # def clinics
  #   specializations.reduce([]) do |result, spec|
  #     result << spec_clinics(spec)
  #   end.flatten.uniq
  # end
  #
  #
  # private
  #
  # def spec_clinics(spec)
  #   spec.doctors.reduce([]) do |result, doctor|
  #     result << doctor.clinics
  #   end
  # end

  def clinics

  end
end
