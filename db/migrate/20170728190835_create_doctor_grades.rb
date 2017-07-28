class CreateDoctorGrades < ActiveRecord::Migration
  def change
    create_table :doctor_grades do |t|
      t.integer :doctor_id
      t.integer :grade_id
    end
  end
end
