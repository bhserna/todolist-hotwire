class TodoList < ApplicationRecord
  has_many :todos, dependent: :destroy
  enum filter: [:all, :completed, :active], _default: "all", _prefix: true

  def self.find_or_create_for_session(session)
    id = session[:todo_list_id]
    todo_list = id && find_by(id: id) || create()
    session[:todo_list_id] = todo_list.id
    todo_list
  end

  def filtered_todos
    todos.send(filter)
  end
end
