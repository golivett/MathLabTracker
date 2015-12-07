class SetDefaultLoginDateToYesterday < ActiveRecord::Migration
  def change
    change_table :students do |t|
    t.remove :login_date
    t.date :login_date, default: Date.yesterday
  end
end
end