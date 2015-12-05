class WelcomeController < ApplicationController
  def index
    @all_professors = Student.all_professors
    @professors = ["Florez", "Moore", "Rudolph", "Trautman", "Verdicchio"]
  end
  
  
end
