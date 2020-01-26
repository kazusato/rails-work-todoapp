class TodoController < ApplicationController
  def list
    @todo = Todo.all
  end

  def new
    @todo = Todo.new
  end

  def create
    @todo = Todo.new(params.require(:todo).permit(:title))
    @todo.save
  end
end
