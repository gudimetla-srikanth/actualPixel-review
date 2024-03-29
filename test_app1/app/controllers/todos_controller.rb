class TodosController < ApplicationController 
  def index 
    @todo = Todo.all
  end
  def new 
    @todo = Todo.new
  end
  def show
    @todo = Todo.find(params[:id]) 
  end
  def create 
    @todo = Todo.new(params.require(:todo).permit(:title,:description))
    @todo.save
    redirect_to root_path
  end
  def update
    @todo = Todo.find(params[:id])
    @todo.update(title:params[:todo][:title],description:params[:todo][:description])
    redirect_to root_path
  end
  def edit 
    @todos = Todo.find(params[:id])
  end
  def destroy 
    @todo = Todo.find(params[:id]) 
    @todo.destroy
    redirect_to root_path
  end
end