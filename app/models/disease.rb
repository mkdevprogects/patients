class Disease < ActiveRecord::Base
  validates :title, presence: true
  validates :icd_code, uniqueness: true
end
