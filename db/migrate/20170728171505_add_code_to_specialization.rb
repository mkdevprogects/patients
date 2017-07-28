class AddCodeToSpecialization < ActiveRecord::Migration
  def change
    add_column :specializations, :code, :string
  end
end
