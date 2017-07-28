class CreateDoctorSpecializations < ActiveRecord::Migration
  def change
    create_table :doctor_specializations do |t|
      t.integer :doctor_id
      t.integer :specialization_id
      t.string :grade
    end
  end
end
