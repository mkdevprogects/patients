class CreateClinics < ActiveRecord::Migration
  def change
    create_table :clinics do |t|
      t.string :title
      t.string :phone
      t.string :email
      t.string :address

      t.timestamps null: false
    end
  end
end
