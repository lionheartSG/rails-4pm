Rails.application.routes.draw do
  mount ForestLiana::Engine => '/forest'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")

  root to: "pages#home"
  get "edit", to: "pages#edit"
  patch "update", to: "pages#update"
  get "new", to: "pages#new"
  post "create", to: "pages#create"
  get "confirmed", to: "pages#confirmed"
end
