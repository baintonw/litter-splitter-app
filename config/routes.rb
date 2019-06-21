Rails.application.routes.draw do
  resources :users, only: [:index]
  resources :cats, only: [:new, :create]

  get '/litter', to: "application#home"#app home page
  post '/users', to: "users#create"
  get '/litter/signup', to: "users#new"#user signup page
  post '/litter/signup', to: "users#create"#signs up a user

  get '/login', to: "sessions#new", as: "login"#logs in a user
  post '/login', to: "sessions#create"#logs in a user

  get '/users/:id/feed', to: "users#feed", as: "user_feed"#user's feed

  get '/users/:id', to: "users#show", as: "user"#user's profile

  get '/cats/new', to: "cats#new"
  post '/cats/new', to: "cats#new"

  get '/cats', to: "cats#index"
  get '/cats/:id', to: "cats#show", as: "cat"#cat profile page
  patch '/adopt/:id', to: "cats#adopt"#adopts a cat based on button push
  patch '/release/:id', to: "cats#give_up"
  delete '/logout', to: "sessions#destroy", as: "logout"







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
