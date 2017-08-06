class Clinic < ActiveRecord::Base
  has_many :practices
  has_many :doctors, through: :practices

  has_many :visits

  validates :title, presence: true
  validates :email, presence: true, uniqueness: true

  # scope :specializations_titles, -> { (joins(:doctos)) }

  # def specializations_titles
  #   Specialization.joins(:doctors).joins(:clinics).where("clinics.id=?", self.id)
  # end

  def specializations_titles
    doctors.reduce([]) do |result, doctor|
      result << doctor.specializations.pluck(:title)
    end.flatten.uniq
  end
end
