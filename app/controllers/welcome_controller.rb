class WelcomeController < ApplicationController
  def index
    @all_professors = Student.all_professors
  end
  
  
end
