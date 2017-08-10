class Clinic < ActiveRecord::Base
  has_many :practices
  has_many :doctors, through: :practices

  has_many :visits

  validates :title, presence: true
  validates :email, presence: true, uniqueness: true

  def specializations_titles
    Specialization.joins(doctors: [:clinics]).where("clinics.id=?", self.id).pluck(:title).uniq
  end
end
