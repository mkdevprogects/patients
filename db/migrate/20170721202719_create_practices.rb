class CreatePractices < ActiveRecord::Migration
  def change
    create_table :practices do |t|
      t.integer :clinic_id
      t.integer :doctor_id
    end
  end
end
