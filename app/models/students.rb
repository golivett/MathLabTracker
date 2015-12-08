class Students < ActiveRecord::Base
    
  def self.search(cwid)
        Student.where(cwid: cwid).take
    end

  def self.all_professors
    %w(Florez, Moore, Trautman, Rudolph, Verdicchio)
  end
  def self.search
        # @student = Student.where(cwid: @cwid).take
  end
  def self.login
      @count = self.count
     @count = @count + 1
     self.count = @count
  end
  


end
