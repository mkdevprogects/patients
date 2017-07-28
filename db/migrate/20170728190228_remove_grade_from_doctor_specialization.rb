class RemoveGradeFromDoctorSpecialization < ActiveRecord::Migration
  def change
    remove_column :doctor_specializations, :grade, :string
  end
end
