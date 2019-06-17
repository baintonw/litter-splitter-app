Rails.application.routes.draw do


  get '/litter/users', to: "users#index"
  get '/users/new', to: "users#new", as: "new_user"

  get '/users/:id', to: "users#show", as: "user"

  post '/users', to: "users#create"
  patch '/users/:id', to: "users#update"
  delete '/users/:id', to: "users#destroy"

  get '/litter', to: "application#home"
  post '/litter', to: "sessions#create", as: "login"
  post '/litter', to: "sessions#new"
  get '/litter/signup', to: "users#new"
  post '/litter/signup', to: "users#create"

  # get '/litter/show', to: ""
  # get '/litter/:id', to: "users#:id"
  # patch '/litter/'
  # delete '/litter/:id', to: "users#:id"

end
Rails.application.routes.draw do
#creating all of the routes and url helpers for the 7 basic controller actions
resources :songs

get '/rappers', to: "rappers#index", as: "rappers"
get '/rappers/new', to: "rappers#new", as: "new_rapper" #new_rapper_path
get '/rappers/:id/edit', to: "rappers#edit"
get  '/rappers/:id', to: "rappers#show", as: "rapper" #Rails auto appends "_path" to this string
post '/rappers', to: "rappers#create"
patch '/rappers/:id', to: "rappers#update"

resources :users, only: [:index, :create]
# get '/users', to: "users#index"
get '/signup', to: "users#new", as: "signup"
get '/login', to: "sessions#new", as: "login"
post '/login', to: "sessions#create"
delete '/logout', to: "sessions#destroy"

end
