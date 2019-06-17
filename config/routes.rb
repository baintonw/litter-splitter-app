Rails.application.routes.draw do
  resources :users
  get 'litter/login', to: "users#new"
end
