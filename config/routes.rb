Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'welcome#index'

  resources :products
  get '/products/:id', to: 'products#show'

  resources :sizes, only: [:index]

  devise_for :users, :controllers => { :registrations => 'registrations', :omniauth_callbacks => "callbacks" }
  devise_scope :user do
    get 'login', to: 'devise/sessions#new'
  end
  devise_scope :user do
    get 'signup', to: 'devise/registrations#new'
  end

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  get 'profile', to: 'users#profile'
end

