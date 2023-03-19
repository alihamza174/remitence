Rails.application.routes.draw do
  resources :students
  devise_for :users
 namespace :admin do
  get 'dashboard', to: 'dashboard#index'
end
  root to: 'admin#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  devise_scope :user do  
       get '/users/sign_out' => 'devise/sessions#destroy'     
    end
end
