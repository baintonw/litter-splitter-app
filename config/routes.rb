Rails.application.routes.draw do
  resources :users, only: [:index]

  get '/litter', to: "application#home"
  post '/users', to: "users#create"
  get '/litter/signup', to: "users#new"
  post '/litter/signup', to: "users#create"

  get '/login', to: "sessions#new", as: "login"
  post '/login', to: "sessions#create"

  get '/users/:id', to: "users#show", as: "user"

  get 'cats', to: "cats#index"
  get 'cats/:id', to: "cats#show", as: "cat"
  patch '/cats/:id', to: "cats#update"
  delete '/logout', to: "sessions#destroy"





  # resources :users, only: [:index, :create]
  # # get '/users', to: "users#index"
  # get '/signup', to: "users#new", as: "signup"
  # get '/login', to: "sessions#new", as: "login"
  # post '/login', to: "sessions#create"
  # delete '/logout', to: "sessions#destroy"

  # get '/litter/show', to: ""
  # get '/litter/:id', to: "users#:id"
  # patch '/litter/'
  # delete '/litter/:id', to: "users#:id"

end
# Rails.application.routes.draw do
# #creating all of the routes and url helpers for the 7 basic controller actions
# resources :songs
#
# get '/rappers', to: "rappers#index", as: "rappers"
# get '/rappers/new', to: "rappers#new", as: "new_rapper" #new_rapper_path
# get '/rappers/:id/edit', to: "rappers#edit"
# get  '/rappers/:id', to: "rappers#show", as: "rapper" #Rails auto appends "_path" to this string
# post '/rappers', to: "rappers#create"
# patch '/rappers/:id', to: "rappers#update"
