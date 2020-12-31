class AddFilterToTodoLists < ActiveRecord::Migration[6.1]
  def change
    add_column :todo_lists, :filter, :integer
  end
end
