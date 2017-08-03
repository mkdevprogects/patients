class Prescription < ActiveRecord::Base
#   Рецепт
  belongs_to :doctor
  belongs_to :illness
end
