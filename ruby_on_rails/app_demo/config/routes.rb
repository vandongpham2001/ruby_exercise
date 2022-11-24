Rails.application.routes.draw do
  resources :saches
  get "/" => "home#index"
  get 'home/top'
  get "about" => "home#about"
  # get"/sach" => "saches#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
