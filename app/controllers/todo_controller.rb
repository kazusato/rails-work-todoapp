class TodoController < ApplicationController
  def list
    @todo = Todo.all
  end

  def list_by_group_id
    @todo = Todo.where("group_id = ?", params[:group_id])
    @group_id = params[:group_id]
  end

  def new
    @todo = Todo.new
  end

  def create
    @todo = Todo.new(params.require(:todo).permit(:title, :group_id))
    @todo.save
  end

  def delete_all
    Todo.delete_all
  end
end
