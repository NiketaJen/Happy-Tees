class HomepageController < ApplicationController
  def home
    
    @categories = Category.all 
  end


end
