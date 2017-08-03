class CreateDiagnoses < ActiveRecord::Migration
  def change
    create_table :diagnoses do |t|
      t.integer :disease_id
      t.integer :illness_id
      t.string :description

      t.timestamps null: false
    end
  end
end
