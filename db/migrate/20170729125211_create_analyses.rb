class CreateAnalyses < ActiveRecord::Migration
  def change
    create_table :analyses do |t|
      t.string :title, null: false
      t.string :conclusion

      t.timestamps null: false
    end
  end
end
