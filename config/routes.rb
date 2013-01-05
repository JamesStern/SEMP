Seap::Application.routes.draw do

  resources :appforms

  match '/about', to: "static_pages#about"

  match '/experience', to: 'static_pages#experience'

  match'/questions', to: 'static_pages#questions'

  match '/goals', to: 'static_pages#goals'

  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "static_pages#home"
  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users
end