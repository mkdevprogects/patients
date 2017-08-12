class Illness < ActiveRecord::Base
  include AASM

  belongs_to :patient
  belongs_to :doctor

  has_many :illness_symptoms
  has_many :symptoms, through: :illness_symptoms

  has_many :visits

  has_many :prescriptions

  has_many :diagnoses
  has_many :diseases, through: :diagnoses

  def clinic
    visits.last.clinic
  end

  aasm do
    state :pending, initial: true
    state :visit
    state :tests
    state :therapy
    state :recovered

    # не уверен, что это событие нужно
    event :pending do
      transitions from: :visit, to: :peending
    end

    event :visit do
      transitions from: [:peending, :therapy, :tests], to: :visit
    end

    event :take_tests do
      transitions from: :visit, to: :tests
    end

    event :be_treated do
      transitions from: :visit, to: :therapy
    end

    event :recover do
      transitions from: :visit, to: :recovered
    end
  end
end
