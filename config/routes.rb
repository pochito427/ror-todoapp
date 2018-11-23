Rails.application.routes.draw do
 

  get 'home/main'
  devise_for :users

  resources :users do
    resources :tasks
  end

  root 'home#main'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
