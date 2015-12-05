class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.integer :CWID
      t.string :first_name
      t.string :last_name
      t.string :teacher
      t.integer :count, default: 1

      t.timestamps null: false
    end
  end
end
