class TodosController < ApplicationController
  def create
    todo = todo_list.todos.create(todo_params)
    redirect_to todo_list
  end

  def edit
    render locals: { todo: todo }
  end

  def update
    todo.update(todo_params)
    redirect_to todo_list
  end

  def toggle
    todo.toggle
    redirect_to todo_list
  end

  def destroy
    todo.destroy
    redirect_to todo_list
  end

  private

  def todo
    @todo ||= todo_list.todos.find(params[:id])
  end

  def todo_params
    params.require(:todo).permit(:description)
  end
end
