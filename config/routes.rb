Rails.application.routes.draw do
  get "/" => redirect("/todo_list")

  resource :todo_list, only: [:show, :index] do
    patch :filter
  end

  resources :todos do
    patch :toggle, on: :member
  end
end
