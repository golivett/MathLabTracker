# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

students = [{:CWID => 10519447, :first_name => 'George', :last_name => 'Olivetti', :teacher => 'Moore', :count => 0},
            {:CWID => 10514815, :first_name => 'Kaige', :last_name => 'Lindberg', :teacher => 'Trautman', :count => 0},
            {:CWID => 10518786, :first_name => 'Joshua', :last_name => 'Terry', :teacher => 'Florez', :count => 0},
            {:CWID => 10517115, :first_name => 'Christopher', :last_name => 'Landry', :teacher => 'Verdicchio', :count => 0},
            {:CWID => 10517555, :first_name => 'William', :last_name => 'Sloane', :teacher => 'Rudolph', :count => 0}
        ]
    
students.each do |student|
  Student.create!(student)
end

professors = [{:name => 'Florez'},
              {:name => 'Moore'},
              {:name => 'Trautman'},
              {:name => 'Rudolph'},
              {:name => 'Verdicchio'}
  ]
  
  professors.each do |professor|
  Professor.create!(professor)
end