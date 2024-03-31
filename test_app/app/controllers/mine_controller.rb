class MineController < ApplicationController
  def index 
    
  end
  def by 
   respond_to do |format|
    format.js
   end
  end
end