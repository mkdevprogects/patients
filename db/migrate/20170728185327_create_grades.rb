class CreateGrades < ActiveRecord::Migration
  def change
    create_table :grades do |t|
      t.string :title
    end
  end
end
