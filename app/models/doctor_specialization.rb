class DoctorSpecialization < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :specialization
end
