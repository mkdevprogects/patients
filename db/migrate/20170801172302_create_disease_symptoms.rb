class CreateDiseaseSymptoms < ActiveRecord::Migration
  def change
    create_table :disease_symptoms do |t|
      t.integer :disease_id
      t.integer :symptom_id
    end
  end
end
