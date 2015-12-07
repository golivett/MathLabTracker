class SetDefaultCountAndLoginDate < ActiveRecord::Migration
  def change
    change_table :students do |t|
    t.remove :login_date
    t.date :login_date, default: Date.yesterday
    t.remove :count
    t.integer :count, default: 0
   end
  end
end