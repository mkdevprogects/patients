class Clinic < ActiveRecord::Base
  has_many :practices
  has_many :doctors, through: :practices

  validates :title, presence: true
  validates :email, presence: true, uniqueness: true

  def specializations_titles
    doctors.reduce([]) do |result, doctor|
      result << doctor.specializations.pluck(:title)
    end.flatten.uniq
  end
end
