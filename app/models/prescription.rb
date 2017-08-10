class Prescription < ActiveRecord::Base
#   Рецепт
  belongs_to :doctor
  belongs_to :illness
  belongs_to :drug

  validates :doctor, :illness, :drug_id, presence: true

  def title
    drug.title
  end
end
