Rails.application.routes.draw do
  resources :users
  get '/litter', to: "application#home"
  get '/litter/login', to: "users#new"

end
