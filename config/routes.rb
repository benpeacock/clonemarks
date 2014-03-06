Clonemarks::Application.routes.draw do

  devise_for :users

  resources :topics

  resources :bookmarks

  get "topics/index"

  post '/emails' => 'emails#create'

  root :to => 'topics#index'

end
