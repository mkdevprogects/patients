class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :name
      t.string :surname
      t.string :patronymic
      t.string :phone
      t.string :email, null: false, uniq: true

      t.timestamps null: false
    end
  end
end
