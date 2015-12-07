class AddLoginDate < ActiveRecord::Migration
  def change
    add_column :students, :login_date, :date
  end
end
