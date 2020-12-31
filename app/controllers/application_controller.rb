class ApplicationController < ActionController::Base
  def todo_list
    @todo_list ||= TodoList.find_or_create_for_session(session)
  end
end
