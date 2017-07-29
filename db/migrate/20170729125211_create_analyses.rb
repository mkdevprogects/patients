class CreateAnalyses < ActiveRecord::Migration
  def change
    create_table :analyses do |t|
      t.string :title
      t.string :conclusion

      t.timestamps null: false
    end
  end
end
