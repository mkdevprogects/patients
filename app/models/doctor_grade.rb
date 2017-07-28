class DoctorGrade < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :grade
end
