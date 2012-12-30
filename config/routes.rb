Seap::Application.routes.draw do

  match '/about', to: "static_pages#about"

  match '/contact', to: 'static_pages#contact'

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