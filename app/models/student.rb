class Student < ActiveRecord::Base
  def self.all_professors
    %w(Florez, Moore, Trautman, Rudolph, Verdicchio)
  end
end
