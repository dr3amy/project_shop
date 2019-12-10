Rails.application.routes.draw do
  #get 'sizes', to: 'sizes#index'
  resources :sizes, only: [:index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

