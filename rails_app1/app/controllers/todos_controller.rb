class TodosController < ApplicationController
  def newpage 
    redirect_to '/oldpage'
  end 
  def oldpage
  end
end
