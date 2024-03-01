class TodoController < ApplicationController
  def index
    begin
     fglje
      # if @article.save 
      #   render html: "Success"
      # else 
      #   flash[:my] = "error occured"
      #   flash[:mine] = "error occured mine"
      #   flash[:myself] = "error occured myself"
      #   flash[:my] = "error occured at end"
      #   render "index"
      # end
      
    rescue => e 
      render html: e.message 
    end
  end
end
