Rails.application.routes.draw do
  resource :todo_list, only: [:show] do
    patch :filter
  end

  resources :todos do
    patch :toggle, on: :member
  end
end
