Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'users/sessions' }
  namespace :admin do
    get 'dashboard', to: 'dashboard#index'
    resources :items
    root to: 'dashboard#index'
  end
  namespace :superadmin do
    resources :companies
    root to: 'companies#index'
  end
  # root to: 'admin#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  devise_scope :user do  
    get '/users/sign_out' => 'devise/sessions#destroy'     
  end
end
