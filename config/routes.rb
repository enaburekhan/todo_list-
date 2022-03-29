Rails.application.routes.draw do
  # Defines the root path route ("/")
  # root "articles#index"

  root 'homes#index'
  get 'tasks/index'
  resources :tasks, only: %i[index]

end
