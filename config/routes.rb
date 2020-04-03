Rails.application.routes.draw do
  get 'grocery_list/show'
  get 'grocery_list/generate'
  get 'grocery_list/show'
  post 'grocery_list', to: 'grocery_list#generate'
  root 'recipes#index'
  get 'static_pages/home', as: 'home'
  get 'static_pages/help', as: 'help'
  get 'static_pages/about', as: 'about'
  get 'static_pages/random_list', to: 'static_pages#random_shopping_list', as: 'random_list'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  # resources
  resources :recipes
end
