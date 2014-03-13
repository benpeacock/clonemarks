Clonemarks::Application.routes.draw do

  get "emails/create"

  devise_for :users

  resources :topics

  resources :bookmarks

  get "welcome/index"

  get "topics/index"

  post '/emails' => 'emails#create'

  root :to => 'topics#index'

end
