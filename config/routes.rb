Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")

  root to: "pages#home"
  get "edit", to: "pages#edit"
  get "new", to: "pages#new"
  get "create", to: "pages#create"
  get "confirmed", to: "pages#confirmed"
end
