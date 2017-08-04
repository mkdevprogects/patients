class Prescription < ActiveRecord::Base
#   Рецепт
  belongs_to :doctor
  belongs_to :illness
  belongs_to :drug

  validates :drug_id, presence: true
end
