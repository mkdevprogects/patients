class CreateDiseases < ActiveRecord::Migration
  def change
    create_table :diseases do |t|
      t.string :title, null: false
      t.string :description
      t.string :icd_code, uniq: true
    end
  end
end
