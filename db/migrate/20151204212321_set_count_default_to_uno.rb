class SetCountDefaultToUno < ActiveRecord::Migration
  def change
    change_table :students do |t|
    t.remove :count
    t.integer :count, default: 1
    end
  end
end
