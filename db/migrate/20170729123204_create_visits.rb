class CreateVisits < ActiveRecord::Migration
  def change
    create_table :visits do |t|
      t.datetime :date_time, null: false

      t.timestamps null: false
    end
  end
end
