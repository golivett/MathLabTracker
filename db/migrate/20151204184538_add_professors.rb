class AddProfessors < ActiveRecord::Migration
  def change
      create_table :professors do |t|
      t.string :name
    end
  end
end
