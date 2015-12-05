class Students < ActiveRecord::Base
    
def self.search(search)
  if search
    find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
  else
    find(:all)
  end
end

  def self.all_professors
    %w(Florez, Moore, Trautman, Rudolph, Verdicchio)
  end


end
