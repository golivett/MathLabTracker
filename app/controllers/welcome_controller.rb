class WelcomeController < ApplicationController
  def index
  end
  
  def login
    flash[:notice] = "Thanks for loggin in!"
  end
  
end
