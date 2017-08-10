class AddColumnToPrescriptions < ActiveRecord::Migration
  def change
    add_column :prescriptions, :illness_id, :integer
    add_column :prescriptions, :doctor_id, :integer
  end
end
