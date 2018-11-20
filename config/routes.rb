Rails.application.routes.draw do
  get 'tasks/index'
  get 'tasks/create'
  get 'tasks/edit'
  get 'tasks/show'
  devise_for :users

  resources :users do
    resource :tasks
  end

  root 'tasks#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
