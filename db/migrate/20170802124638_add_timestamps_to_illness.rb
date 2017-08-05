class AddTimestampsToIllness < ActiveRecord::Migration
  def change
    add_column :illnesses, :created_at, :datetime
    add_column :illnesses, :updated_at, :datetime
  end
end
