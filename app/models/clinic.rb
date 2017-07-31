class Clinic < ActiveRecord::Base
  has_many :practices
  has_many :doctors, through: :practices

  validates :title, presence: true
  validates :email, presence: true, uniqueness: true

  def specializations_titles
    arr = []
    self.doctors.each do |doctor|
      (arr.concat doctor.specializations.pluck(:title)).uniq!
    end
    arr
  end
end
