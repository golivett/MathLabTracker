class Student < ActiveRecord::Base
  def self.all_professors
    %w(Florez, Moore, Trautman, Rudolph, Verdicchio)
  end
  
  # def self.search(cwid)
  #       Student.where(cwid: cwid).take
  #   end
  #   def self.login
  #     @count = self.count
  #   @count = @count + 1
  #   self.update_attributes!(:count => @count)
  #   end
    
  #   def self.poof
  #     self.destroy
  #   end
    

end
