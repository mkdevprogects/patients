class Visit < ActiveRecord::Base
  include AASM

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

  aasm do
    state :pending, initial: true
    state :skipped
    state :aborted
    state :done

    event :skip do
      transitions from: :pending, to: :skipped
    end

    event :interrupt do
      transitions from: [:pending, :skipped], to: :aborted
    end

    event :complete do
      transitions from: [:pending, :skipped], to: :done
    end
  end
end
