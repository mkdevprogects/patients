class Visit < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :illness
  belongs_to :clinic

  validates :date_time, presence: true

  def doctor_surname
    doctor.surname
  end

  def doctor_name
    doctor.name
  end

  def clinic_title
    clinic.title
  end
end
