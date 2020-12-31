module TodoListsHelper
  def filter_button(todo_list, text, filter)
    button_to text, filter_todo_list_path(filter: filter),
      method: :patch,
      class: filter_button_class_for(todo_list, filter)
  end

  def filter_button_class_for(todo_list, filter)
    filter_class = "gray no-underline pointer di bn bg-transparent pa0"
    active_class = "blue no-underline pointer di bn bg-transparent pa0"
    todo_list.filter == filter.to_s ? active_class : filter_class
  end
end
