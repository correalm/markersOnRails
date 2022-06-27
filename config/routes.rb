Rails.application.routes.draw do
  resources :markers
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root "markers#index"

  delete '/deleteAll', to: "markers#delete_all"
  # Defines the root path route ("/")
  # root "articles#index"
end
