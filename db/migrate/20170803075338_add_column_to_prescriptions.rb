class AddColumnToPrescriptions < ActiveRecord::Migration
  def change
    add_column :prescriptions, :illness_id, :integer
  end
end
