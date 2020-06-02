Rails.application.routes.draw do
  devise_for :users

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'dashboard/search',to: 'dashboard#search'
  root 'dashboard#index' , as: 'home'
  resources :post 
end
