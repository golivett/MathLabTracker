class SetCountToDefaultValue < ActiveRecord::Migration
  def change
    change_table :students do |t|
    t.remove :count
    t.integer :count, default: 0
    end
  end
end
