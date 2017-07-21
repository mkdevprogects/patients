class CreateDoctors < ActiveRecord::Migration
  def change
    create_table :doctors do |t|
      t.string :name
      t.string :surname
      t.string :patronymic
      t.string :phone
      t.string :email

      t.timestamps null: false
    end
  end
end
