Rails.application.routes.draw do
  # Defines the root path route ("/")
  # root "articles#index"

  root to: 'homes#index'
  get 'tasks/index'

  resources :tasks, only: %i[index create] do

    member do
      get 'complete'
    end
  end
end
