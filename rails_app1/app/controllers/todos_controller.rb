class TodosController < ApplicationController
  def index 
    
  end

  #path "new_todo"
  def new 
  end 

  #path "todos"
  def create 
    @todo = Todo.new(params.require(:todo).permit(:name))
    if @todo.save 
      redirect_to todos_path 
    else 
      render :new,status: :unprocessable_entity 
    end
  end
end
