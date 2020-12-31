class TodoListsController < ApplicationController
  def show
    render locals: { todo_list: todo_list }
  end

  def filter
    todo_list.update(filter: params[:filter])
    redirect_to todo_list
  end
end
