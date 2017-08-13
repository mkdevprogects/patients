class AddVisitState < ActiveRecord::Migration
  def self.up
    add_column :visits, :aasm_state, :string
  end

  def self.down
    remove_column :visits, :aasm_state
  end
end
